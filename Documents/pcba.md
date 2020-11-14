# PCB SMT Assembly Guide

I highly recommend assembling this board using solder paste, a stencil, and a reflow oven. If you don't have access to a reflow oven, a hot air gun will also get the job done.

- Gerbers can be found in `production/1.0-prod/gerbers.zip` folder, and can be uploaded to your favourite PCB manufacturer.
- Most PCB houses will generate the solderpaste stencil from your copper layer, which can cause issues. As such I recommend uploading the stencil separately to ensure the apertures are as per the design files.
- The bill of materials can be found at `production/1.0-prod/bom.csv` and contains part numbers for all components on the board. DigiKey and LCSC part numbers are provided where available, however some parts such at the USB connectors, reverse mount LEDs, and USB hub may only be available at one or neither of the suppliers.
- The "Human PnP" file is located at `production/1.0-prod/assembly.html`, and will be very helpful in assembling the board.

## Test Procedure

With the board assembled, you are ready to plug it in and check everything works. The below test procedure should help guide you through the process. 

- Preform visual inspection of PCBA and rework any issues. In particular, USB connectors QFNs often require rework.
- Measure continuity across C1. If shorted, locate and resolve a VCC - GND short.
- Measure continuity across C21. If shorted, locate and reslove a 3V3 - GND short.
- Using a current limited bench power supply set at 5V 100 mA, connect board through J1 and confirm power draw is approximately 25 mA. If current draw is high, attempt to locate and resolve any shorts on the board. If current draw too low, ensure ICs and crystals are soldered correctly.
- Using an AVR programmer, [flash the bootloader](Documents/advanced-config.md#bootloader-flashing) through the ISP header.
	- If unable, common causes are:
		- Software issues - check if programming a known good device works.
		- Poor connection - ensure your connections to the programming header are solid.
		- Power / Reset correct - ensure all power pins have 5V on the physical pin (not nearest capacitor) and that the reset line is high.
		- Crystal - ensure Y1 is soldered down correctly and is 16 MHz.
- With bootlader installed, connect to computer and flash the no_mod firmware.
	- If unable to detect keyboard, confirm that USB hub and ATmega are being detected through `lsusb` and / or `dmesg -w` on Linux, or device manager on Windows. 
- Using tweezers, short pin connections and ensure all keys print a unique key to the computer.
- Also test the rotary encoder connections by placing an encoder against the three holes and rotating in both directions.
	- Common issues are with the diodes being installed incorrectly, and shorts on the 32u4.
- Flash default firmware and confirm all LEDs light up red. Double tap bottom right key and then top row, 3rd from left do cycle through LEDs and confirm they all function.
	- LEDs are daisy chained from D2 - D3 - D10 etc around outside of board, ensure good solder connections if LEDs stop working somewhere in the middle.
	- If solder connections are good but LED still non functioning, ensure is it oriented correctly (triangle on LED near corner marking on PCB, NOT pin 1!)
	- These LEDs often fail during reflow, so if LED is non functioning and remaining LEDs can be fixed by shorting out LED, replace.
- Check fuses have been set correctly by resetting board from software by pressing the "RESET" key on layer two of the board (bottom row, 3rd from left).
   - With `dmesg-w` or device manager running, ensure "Arduino Leonardo" is seen enumerating before "Hub16" appears. If this fails reflash the bootloader following [these instructions](Documents/advanced-config.md#bootloader-flashing)
- Confirm all downstream USB ports function by connecting a device to each port, ensuring to rotate 180 degrees, and checking it appears on computer each time.
	- Common issues are with shorts on the USB hub, along with data pins on connector.
	- If device only works in one orientation, check power pins of connector are soldered down well.
- Finally, reverse orientation of upstream USB connector (to computer) and confirm enumeration.

If all the above checks pass, your board is ready to use. Congratulations on a successful assembly!
