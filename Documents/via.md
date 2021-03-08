# VIA Keymap Configuration

VIA is a great way to graphically configure your keyboard without going through the hassle of configuring build environments and poking around in the code.

## Install VIA

To use VIA, first [download and install](https://caniusevia.com/) the configuration software, and then plug in your keyboard. It should detect and show a graphic of Hub16 on your screen.

**Note: There is a [bug](https://github.com/qmk/qmk_firmware/issues/11157) in QMK / VIA which results in keycodes such as LED control to be shifted by one. This results in layer one of the keyboard looking wrong. Until this is fixed, rolling back to [old firmware](../Firmware/binaries/hub16_via_old.hex) is the best workaround.**

## Configure Keys

From within VIA, you can easily configure keys as required. It allows not only the typical keys found on your keyboard, but media keys, macros, layer shifting to enable different functions per key, and even keys to control the LEDs installed in Hub16. It does not however allow you to configure the rotary encoder behaviour.

## Configure Encoders

By default, the encoders are configured to volume up / down (left) and media next / prev (right).

Unfortunately, due to limitations in VIA the encoders are not visible or configurable. The best workaround at this time is to build a new VIA keymap with the encoder functions altered to suit your use case, flash this onto the board, and then configure the remainder of the keys in VIA. This can be done by following the below instructions:

- Follow the QMK [getting started guide](https://docs.qmk.fm/#/newbs_getting_started) to install the toolchain and configure your build environment.
- Open the `qmk_firmware/keyboards/Hub16/keymaps/via/keymap.c` file in your preferred text editor.
- Locate the function `encoder_update_user`, and update the keycodes in `tap_code(KC_xxx)` to one from the [keycodes list](https://docs.qmk.fm/#/keycodes?id=basic-keycodes). If you use keycode not on the basic list, you may need to replace `tap_code` with `tap_code16`.
- With the changes made, save your new keymap, build, and flash the keymap to Hub16 with `make hub16:via:flash` run from the `qmk_firmware` directory.
- You should now see the encoders functioning as desired, and you can configure the remainder or your keyboard using VIA.
