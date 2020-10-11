# Advanced Firmware and Software Configuration

This section details how Hub16 works, and how you can modify it to suit your needs.

If you are simply looking for into on how to get up and running, the [VIA](via.md) and [Macro](macro.md) documentation may be better suited.

## Summary

The macro functionality of Hub16 is quite unique, as it moves control over what key is detected by the host computer from the keyboard to the computer itself, which enables a whole new level of control. Examples of functionality enabled by this include:

- Dynamically assigning keys pressed depending on open application, e.g. encoder changing zoom in Photoshop, but zooming timeline in Premiere.
- Accessing low level functions, such as directly bringing a given application to the foreground without tabbing through open windows.
- Running shell commands without opening a shell and playing back key sequences.
- Any other feature that your software (AutoHotKey, Karabiner-Elements, Autokey) provides an interface for.

## Theory of Operation

- Hub16 works by presenting a uniquely identifiable key to your computer, which can be intercepted by a intermediate layer of software on your computer, and can then be processed as required.
- This works by "wrapping" a normal key press with a modifier key to create a unique key, just like pressing SHIFT changes the key shown on your screen when pressed in conjunction with a key on your keyboard.
- However, as CTRL, SHIFT, ALT etc are commonly used they would not be very helpful to generate a unique key, so we instead use F13 - F24 as most keyboards do not have these, but are still valid keycodes.
- To achieve this, when you press a key, Hub16 first sends a modifier key (e.g. F23) before pressing down the key you touched. Upon release of your key, it releases the modifier, allowing the computer to pick up that Hub16 has pressed a key.
- **NOTE** macOS instead uses the VID:PID of your device to uniquely identify Hub16, however the high level concept outlined above still applies.

## Firmware Configuration

The default configuration can be easily changed, allowing for further customisation of the board. Examples of what can be done include:

- Holding down a key / encoder button results in different keys being sent when rotating the encoder, effectively doubling (or tripling etc) the number of encoders on the board.
- Extending the number of macro keys by having multiple layers of unique keys, accessed by the bottom row of keys being dedicated to shifting layers.
- Building the macro configuration with VIA enabled, allowing LEDs to be customised from the VIA GUI instead of tapping keys to change the mode and colour.

Key sections of the code and their function are outlined below:

| Section | Description |
| ------- | ----------- |
| `#define KC_WRAP` | If you have more than one Hub16 connected, change the wrapping function key to differentiate boards. |
| `const uint16_t PROGMEM keymaps` | This section is where the keymaps live, and if you want to alter the behaviour of a key this is the place to do it. |
| `void encoder_update_user` | Want to change what rotating an encoder does? If so this is the place to look. |
| `bool process_record_user` | Every time a non [quantum](https://docs.qmk.fm/#/keycodes?id=quantum-keycodes) key is pressed, it will be run throught this section, and is the place to implement custom functions such as sending custom strings, turning on / off a mouse shaker, or any custom action you want when a key is pressed. |
| `void td_ctrl` | To work around the limitations of `process_record_user` this function is required to ensure the layer toggle key is wrapped when sent to the host computer. If you don't want to use tap dance, or are okay having a dedicated key to toggling layers, this can be removed. |

## Software Configuration

Due to the different software being required for each OS, and the varying levels of options each tool provides, it's challenging to make any specific recommendations for ways to customise the software running on your host PC. With this said, I would strongly suggest looking at the `Hub16-example.ahk` script which is an obfuscated version of what I use at work every day, along with the documentation of your chosen scripting tool to see what is possible, and think how it may help your day to day workflow. Below are some examples of what people have used their Hub16 / Hub16 to automate:

- Running complex shortcuts with a single key.
- Placing common shortcuts (enlarge / shrink) on the encoders to ease adjustment.
- Pulling a specific windows to the foreground with a single tap.
- Dedicated keys for video conference muting, sharing screens etc.
- Automating filling out of repetitive forms (e.g. the Auspost customs declaration...)
- Having emoticons or emoji a single keystroke away. (•◡•) /
- Alternate input for racing / flight simulators.

If you come up with a novel use case, I'd be very interested to hear about it so please get in touch!

## Bootloader Flashing

**The bootloader only has to be flashed if you are building your own board from scratch, have a board purchased between June 12 and June 22 2020 which will not enter the bootloader from a software reset, or have bricked your board and need to bring it back to life.**

- To make life easy I recommend flashing the Arduino bootloader onto the microcontroller, however if you already have the Atmel DFU bootloader on your device, feel free to change the bootloader in `rules.mk` to `atmel-dfu` and skip the next step.

- The simplest way to flash the bootloader is to download [Arduino](https://www.arduino.cc/en/main/software) and [follow these instructions](https://learn.sparkfun.com/tutorials/installing-an-arduino-bootloader/all).
	- You will need to select 'Arduino Leonardo' as your chosen board, and connect to the programming header exposed on the board.
	- Pressing 2x3 male header against the pins will provide a good way to flash the board without soldering to the programming header.

With the bootloader on the microcontroller, we can now flash the QMK firmware onto the device.
