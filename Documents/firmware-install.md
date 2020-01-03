### Flashing Firmware

These instructions are for those who are either building their own board from scratch, or have bricked their board and need to bring it back to life. 

* To make life easy I recommend flashing the Arduino bootloader onto the microcontroller, however if you already have the Atmel DFU bootloader on your device, feel free to change the bootloader in `rules.mk` to `atmel-dfu` and skip the next step. 

* The simplest way to flash the bootloader is to download [Arduino](https://www.arduino.cc/en/main/software) and [follow these instructions](https://learn.sparkfun.com/tutorials/installing-an-arduino-bootloader/all).
	* You will need to select 'Arduino Leonardo' as your chosen board, and connect to the 6 exposed pads on the back of the keyboard. They follow the standard [AVR pinout](https://www.olimex.com/Products/AVR/Programmers/AVR-ICSP/resources/AVR-ICSP.gif).

With the bootloader on the microcontroller, we can now flash the QMK firmware onto the device. 

Precompiled binaries are available at `Firmware/binaries` for the keyboard if you do not want to compile it from source, and can be flashed using [QMK Toolbox](https://github.com/qmk/qmk_toolbox).

To build the firmware from source: 

* Git clone or download `https://github.com/qmk/qmk_firmware`
* Copy `Firmware/hub16` into the keyboards folder.
* Follow the [build instructions](https://docs.qmk.fm/#/getting_started_build_tools) for your OS to install the toolchain.

To confirm all keys / encoders work, we will flash test firmware which allows for testing of all functionality. 
* Connect you keyboard and run `make hub16:test:flash`, or flash `hub16_test.bin` with QMK Toolbox.
* Follow the on screen prompts to reset your keyboard when required for the device to be flashed- the reset button is located on the back of the PCB. 
* You can now use something conductive (tweezers, paperclip) to short out the keyswitch and encoder switch contacts to ensure all keys work, along with pressing a rotary encoder against its three pins to check its function. 
* You should see each switch / encoder type a unique letter, if there are duplicates or no text, look for bad solder joints on the PCB, in particular the microcontroller pins and small resistor packs labelled RN. 
* If all of the keys work, flash the real firmware with `make hub16:default:flash` (or `hub16_default.bin` for QMK Toolbox), and your keyboard should be good to go. 
* If desired, check out the [Test Procedue](test-procedure.md) to confirm everything works as plnned, and the head to the [mechanical assembly](enclosure-design.md) instructions to finish your build.
