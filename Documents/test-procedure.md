# Test Procedure

This procedure is used to ensure bringup and functionality of a freshly baked PCB goes smoothly. 

* Preform visual inspection of PCA and rework any issues. In particular, USB connectors and resistor networks often short out. 
* Measure continuity across C1. If shorted, locate and resolve a VCC - GND short. 
* Measure continuity across C21. If shorted, locate and reslove a 3V3 - GND short.
* Using a current limited bench power supply set at 5V 100 mA, connect board through J1 and confirm power draw is approximately 25 mA. If current draw is high, attempt to locate and resolve any shorts on the board. If current draw too low, ensure ICs are soldered correctly. 
* Using an AVR programmer, flash the Arduino bootloader through the ISP header J2.
	* If unable, common causes are:
		* Software issues - check if programming a known good device works.
		* Poor connection - ensure your connections to J2 are good, and if using pogo pins that they operate freely. 
		* Power / Reset correct - ensure all power pins have 5V on the physical pin (not nearest capacitor) and that the reset line is high. 
		* Crystal - ensure Y1 is soldered down correctly and is 16 MHz.
* With bootlader installed, connect to computer and flash the test firmware. 
	* If unable to detect keyboard, confirm that USB hub and ATmega are being detected through `lsusb` and / or `dmesg -w` on Linux, or device manager on Windows. 
	* Inspect U3 for any shorts between pins, along with crystal and surrounding passives being connected correctly. 
* Using tweezers, short pin connections and ensure all keys print a unique key to the computer.
* Also test the rotary encoder connections by placing an encoder against the three pins near RN1 and RN5 and rotating in both directions.
	* Common issues are with the diodes being installed incorrectly, and resistor networks being shorted. 
* Flash default firmware and confirm all LEDs light up red. Double tap bottom right key (K19) and then K11 do cycle through LEDs and confirm they all function. 
	* LEDs are daisy chained from D2 - D3 - D10 etc around outside of board, ensure good solder connections if LEDs stop working somewhere in the middle 
	* Shorting the JPx near LED removes it from the chain, allowing confirmation that other LEDs works. 
	* If solder connections are good but LED still non functioning, ensure is it oriented correctly (triangle on LED near corner marking no PCB, NOT pin 1!)
	* These LEDs often fail during reflow, so if LED is non functioning and remaining LEDs can be fixed by shorting out LED, replace. 
* Confirm all downstream USB ports function by connecting a device to each port, ensuring to rotate 180 degrees, and checking it appears on computer each time. 
	* Common issues are with shorts on the USB hub, along with data pins on connector.
	* If device only works in one orientation, check power pins of connector are soldered down well. 
* Finally, reverse orientation of upstream USB connector (to computer) and confirm enumeration. 

If all the above checks pass, your board is ready to use. Congratulations on a successful assembly! 
