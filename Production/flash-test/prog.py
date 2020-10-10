#!/bin/python3

# Script to program and test Hub16
# Requires avrdude 6.3 to be installed and added to path

import os
import time
import argparse

def bootloader():
    # Flash Bootloader
    erase = "avrdude -C avrdude.conf -v -p atmega32u4 -c usbasp -Pusb -e -Ulock:w:0x3F:m -Uefuse:w:0xcb:m -Uhfuse:w:0xd8:m -Ulfuse:w:0xff:m"
    bootloader = "avrdude -C avrdude.conf -v -p atmega32u4 -c usbasp -Pusb -Uflash:w:Caterina-Leonardo.hex:i -Ulock:w:0x2F:m"
    
    os.system(erase)
    os.system(bootloader)
    time.sleep(2) # Delay for 32u4 to reset and enumerate

def read_eeprom():
    # Read eeprom contents
    read = "avrdude -C avrdude.conf -v -p atmega32u4 -c usbasp -Pusb -U eeprom:r:eeprom.bin:r"
    os.system(read)
    time.sleep(2)

def write_eeprom():
    # Write eeprom contents
    write = "avrdude -C avrdude.conf -v -p atmega32u4 -c usbasp -Pusb -U eeprom:w:eeprom.bin:r"
    os.system(write)
    time.sleep(2)

def qmk():
    # Flash QMK
    flash = "avrdude -C avrdude.conf -v -patmega32u4 -c avr109 -P /dev/ttyACM0 -b 57600 -D -Uflash:w:../../Firmware/binaries/hub16_via.hex:i"
    os.system(flash)

def test():
    # Test Device
    chars_reqd = "abcdefghijklmnopqrstuv"
    chars_input = input("Press all the keys!: ")
    chars_remain = ""

    while True:

        for char in chars_reqd:
            if char in chars_input:
                chars_remain = chars_remain.replace(char, "")
            elif char not in chars_remain:
                chars_remain = chars_remain + char

        if len(chars_remain) == 0:
            print("ALL KEYS WORKING")
            break

        chars_reqd = chars_remain
        chars_input = input("Need to press {}: ".format(chars_remain))

if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-b", "--bootloader",   action='store_true')
    parser.add_argument("-e", "--read_eeprom",  action='store_true')
    parser.add_argument("-w", "--write_eeprom", action='store_true')
    parser.add_argument("-q", "--qmk",          action='store_true')
    parser.add_argument("-t", "--test",         action='store_true')
    parser.add_argument("-r", "--repeat",       action='store_true')
    args = parser.parse_args()

    while True:

        if args.bootloader:
            bootloader()
        if args.read_eeprom:
            read_eeprom()
        if args.write_eeprom:
            write_eeprom()
        if args.qmk:
            qmk()
        if args.test:
            test()


        if args.repeat == False:
        	break
        time.sleep(1)

        input("Press any key to continue.")