# Firmware and Software Configuration 

The keyboard is designed to work out of the box with software on your computer such as AutoHotKey, which enables very powerful macros to be designed as the computer can make context specific decisions regarding what to do, unlike a traditional keyboard.

## Theory of Operation
Hub16 works by 'wrapping' a normal key press with a modifier key, just like CTRL + C or SHIFT + C works on the `c` key on your computer. By using an obscure key such as F24, we can get the same functionality out of our Macro Pad without impeding on the functionality of our standard keyboard (assuming your keyboard does not have a F24 key!). 

When you press a key on the Hub16, it first presses and holds down a modifier key (F24 by default) before pressing and releasing a normal alpha key. It then releases the modifier key and returns to the idle state. As F24 + `a-z` is not a keyboard shortcut nothing occurs, however by using software on the host computer we can detect the F24 press and run the appropriate script. 

## Default Configuration 
```
------------------  ENC1:Clockwise: q
|  ENC1   ENC2   |  ENC1:Anticlockwise: r
| a   b   c   d  |  ENC1:Button: s
| e   f   g   h  |  ENC2:Clockwise: t
| i   j   k   l  |  ENC2:Anticlockwise: u
| m   n   o      |  ENC2:Button: v
------------------
```

The default configuration is shown above, with all but the bottom right key sending keys to the computer, as the missing key can be double tapped to bring up a second layer of control for LEDs, which is shown below. For some reason I can't get a single tap on the missing key to send a character wrapped in `F24`, but if you get it working please send a pull request.  

```
_______, RGB_MOD, RGB_RMOD, RGB_TOG,
RGB_VAD, RGB_VAI, RGB_HUD, RGB_HUI,
RGB_SAD, RGB_SAI, _______, _______, 
_______, _______, RESET, TD(TD_TO_DEFAULT)
```

## Firmware Configuration 

If the above configuration is not to your liking, you can alter the code in `Firmware/hub16/keymaps/default/keymap.c` (although I recommend making your own keymap folder) to make the keyboard do whatever you want. 

To build your new configuration, you will need to do the following:

* `git clone` or download `https://github.com/qmk/qmk_firmware`
* Follow the [build instructions](https://docs.qmk.fm/#/getting_started_build_tools) for your OS to install the toolchain.

QMK configurator is not supported due to rotary encoders [not yet being supported.](https://github.com/qmk/qmk_configurator/issues/468)

The important sections of the code are oulined below:

| Line(s) | Description |  
| --- | ----------- |  
| 26 | Default modifier key |  
| 37:38 | Single tap behaviour of layer shift key |  
| 41:55| Keyboard layout and layers|  
| 63,67,73,77| Encoder rotation behaviour|  
|139, 147| Encoder button behaviour|

If you want to use it without all the strange modifier key stuff, I'd suggest modifying the `test` keymap, as it has all of the modifier code removed. 

## Software Configuration 

Use of the software requires the understanding of whatever scripting language is being used, such as AutoHotKey, or Python if AutoKey is being used on Linux. I don't know enough to teach how it works, but there are plenty of guides and documentation on the line which can help you out. I have provided my current scripts as inspiration, and am more than happy to answer questions on its function if there are any outstanding questions. 

Taran from Linus Tech Tips has a great [video](https://youtu.be/GZEoss4XIgc?t=346) which covers the whole process, from building the firmware from source to his uniquely designed macros. 

## Software Installation 

### Windows
* Install [AHK](https://www.autohotkey.com/)
    * Copy the example script from `Firmware/hub16.ahk` into a folder of your choice. 
    	* I highly recommend placing a shortcut to that file in `%APPDATA%/Roaming/Microsoft/Windows/Start Menu/Programs/Start-up` to ensure it runs at boot.
    * Customise the script to your hearts content! 

### Linux
* [AutoKey](https://github.com/autokey/autokey) can be used in Linux (tested Ubuntu 19.10) to do the keyboard remapping. 
* Install AutoKey from [here](https://github.com/autokey/autokey/wiki/Installing#debian-and-derivatives) as the apt-get version is 7 years old and no longer functioning.
* It isn't as easy as in Windows, but following the below instructions got it working on my machines.
	* We will remap F24 to `Hyper_R`, and then map `mod3` to `Hyper_R` which AutoKey can then detect.   
	* In a terminal, enter `modmap` to confrim `mod3` and `Hyper_R` are unassigned.
	* Create a file in your home directory with the name `.Xmodmap` and the following contents

		```
		keycode 202 = Hyper_R
		add mod3 = Hyper_R
		```
	* Update xmodmap with ```xmodmap ~/.Xmodmap``` and then confirm that ```mod3``` has been updated. Then add it to your ```~./bashrc```, as this will allow the keyboard to work anytime after a shell is opened. I tried for hours to get it working at startup with no luck, if you can figure out a way please let me know! 
	
	* Load the AutoKey files found in ```Firmware/autokey-hub16``` and it should work! Note: you will need to make a new folder from within Autokey, then copy your files in as it is particular about how things work.
	* You will also need to configure AutoKey to start at boot, which can be done from `Edit -> Preferences`
* For volume and media control as configured in my example code, [playerctl](https://github.com/altdesktop/playerctl) and ```alsa-utils``` must be installed

* Bugs / Strange behaviour
	* As mentioned above, I have been unable to get it working at boot, so you need to open a new shell every time the computer is turned on. 
	* It also appears that you have to update xmodmap after the keyboard is plugged in / reset, so keep that in mind if it does not work as planned after flashing firmware / connecting it. 
	* If the last thing done on the computer is using your normal keyboard before the Hub16, you will need to either press the macro twice, or click on your screen before running it. 
	* I don't understand why any of these occur, if you know / have a fix please let me know or send a pull request. 

### Mac
I don't have a Mac so can't test any programs on it, however [Karabiner](https://pqrs.org/osx/karabiner/) looks like it has the required functionality. Feel free to submit a pull request if you get a script working on OSX.