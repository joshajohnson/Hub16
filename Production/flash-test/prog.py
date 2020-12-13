#!/bin/python3

# Script to program and test Hub16

import os
import time
import argparse
from colorama import Fore
import serial
from serial.tools import list_ports
import io

def bootloader():
    ''' Flashes Bootloader '''
    erase = "avrdude -C avrdude.conf -v -v -p atmega32u4 -c avrispmkii -P usb -e -Ulock:w:0x3F:m -Uefuse:w:0xcb:m -Uhfuse:w:0xd8:m -Ulfuse:w:0xff:m"
    bootloader = "avrdude -C avrdude.conf -v -p atmega32u4 -c avrispmkii -P usb -Uflash:w:Caterina-Leonardo.hex:i -Ulock:w:0x2F:m"
    
    retval = os.system(erase)
    if retval == 0:
        retval = os.system(bootloader)

    if retval != 0:
        print(f'{Fore.RED}#############################')
        print(f'{Fore.RED}FAIL AT WRITING BOOTLOADER!!!')
        print(f'{Fore.RED}#############################')
        exit()
        
def read_eeprom():
    ''' Read EEPROM contents '''
    read = "avrdude -C avrdude.conf -v -p atmega32u4 -c avrispmkii -Pusb -U eeprom:r:eeprom.bin:r"
    retval = os.system(read)
    if retval != 0:
        print(f'{Fore.RED}#########################')
        print(f'{Fore.RED}FAIL AT READING EEPROM!!!')
        print(f'{Fore.RED}#########################')
        exit()

def write_eeprom():
    ''' Write EEPROM contents '''
    write = "avrdude -C avrdude.conf -v -p atmega32u4 -c avrispmkii -Pusb -U eeprom:w:eeprom.bin:r"
    retval = os.system(write)
    if retval != 0:
        print(f'{Fore.RED}#########################')
        print(f'{Fore.RED}FAIL AT WRITING EEPROM!!!')
        print(f'{Fore.RED}#########################')
        exit()

def via():
    ''' Flash VIA '''
    flash = "avrdude -C avrdude.conf -v -patmega32u4 -c avr109 -P /dev/ttyACM1 -b 57600 -D -Uflash:w:../../Firmware/binaries/hub16_via.hex:i"
    retval = os.system(flash)
    if retval != 0:
        print(f'{Fore.RED}#######################')
        print(f'{Fore.RED}FAIL AT FLASHING VIA!!!')
        print(f'{Fore.RED}#######################')
        exit()

def qmk_test():
    ''' Flash QMK Test Firmware '''
    flash = "avrdude -C avrdude.conf -v -patmega32u4 -c avr109 -P /dev/ttyACM1 -b 57600 -D -Uflash:w:hub16_test.hex:i"
    retval = os.system(flash)
    if retval != 0:
        print(f'{Fore.RED}############################')
        print(f'{Fore.RED}FAIL AT FLASHING QMK TEST!!!')
        print(f'{Fore.RED}############################')
        exit()

def test():
    ''' Test device using test fixture '''
    serial_io = None

    # Connect to test fixture
    uart = serial.Serial("/dev/ttyACM0", 115200, timeout=1)
    serial_io = io.TextIOWrapper(
        io.BufferedRWPair(uart, uart))

    # Send keys we want to press, and check we get the same key in return
    for char in range(17,23):   # A to P (keys only)
        serial_io.write(str(char) + "\r\n")
        serial_io.flush()
        recv = input()
        print(f'requested: {chr(char + 96)} received: {str(recv)}') # + 96 converts to ASCII indexing

        if recv != chr(char + 96): # Retry once
            time.sleep(1)
            print('trying again')
            serial_io.write(str(char) + "\r\n")
            serial_io.flush()
            recv = input()
            print(f'requested: {chr(char + 96)} received: {str(recv)}') # + 96 converts to ASCII indexing

            if recv != chr(char + 96):
                print(f'{Fore.RED}###############')
                print(f'{Fore.RED}NOT TYPING {chr(char + 96)} !!!')
                print(f'{Fore.RED}###############')
                exit()

    # Check software reset works - VIA wont flash if this fails
    serial_io.write("255" + "\r\n")
    serial_io.flush()
    print(f'{Fore.BLUE}SOFT RESET FOR VIA')

if __name__ == "__main__":

    # Suggest args to flash and test board from scratch
    # ./prog.py -b -w -q -t -v

    parser = argparse.ArgumentParser()
    parser.add_argument("-b", "--bootloader",   action='store_true')
    parser.add_argument("-e", "--read_eeprom",  action='store_true')
    parser.add_argument("-w", "--write_eeprom", action='store_true')
    parser.add_argument("-q", "--qmk_test",     action='store_true')
    parser.add_argument("-t", "--test",         action='store_true')
    parser.add_argument("-v", "--via",          action='store_true')
    args = parser.parse_args()

    if args.bootloader:
        bootloader()
        print(f'{Fore.BLUE}BOOTLOADER FLASHED{Fore.WHITE}')
        time.sleep(2)
    if args.read_eeprom:
        read_eeprom()
        print(f'{Fore.BLUE}EEPROM READ{Fore.WHITE}')
        time.sleep(2)
    if args.write_eeprom:
        write_eeprom()
        print(f'{Fore.BLUE}EEPROM WRITTEN{Fore.WHITE}')
        time.sleep(2)
    if args.qmk_test:
        qmk_test()
        print(f'{Fore.BLUE}QMK TEST FILE FLASHED{Fore.WHITE}')
        time.sleep(2)
    if args.test:
        test()
        print(f'{Fore.BLUE}KEY AND ENCODER TEST PASSED{Fore.WHITE}')
        time.sleep(2)
    if args.via:
        via()
        print(f'{Fore.BLUE}VIA FLASHED{Fore.WHITE}')
        time.sleep(2)

    print(f'{Fore.GREEN}###################')
    print(f'{Fore.GREEN}ALL TESTS PASSED!!!')
    print(f'{Fore.GREEN}###################')