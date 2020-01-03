EESchema Schematic File Version 4
LIBS:Hub16-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR017
U 1 1 5CBFA2B0
P 4050 900
F 0 "#PWR017" H 4050 750 50  0001 C CNN
F 1 "+5V" H 4065 1073 50  0000 C CNN
F 2 "" H 4050 900 50  0001 C CNN
F 3 "" H 4050 900 50  0001 C CNN
	1    4050 900 
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5CBFB065
P 1500 1100
F 0 "R2" H 1570 1146 50  0000 L CNN
F 1 "10K" H 1570 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 1100 50  0001 C CNN
F 3 "~" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1250 1500 1300
Wire Wire Line
	1500 1300 1800 1300
Wire Wire Line
	1500 950  1500 900 
$Comp
L power:+5V #PWR07
U 1 1 5CBFB970
P 1500 900
F 0 "#PWR07" H 1500 750 50  0001 C CNN
F 1 "+5V" H 1515 1073 50  0000 C CNN
F 2 "" H 1500 900 50  0001 C CNN
F 3 "" H 1500 900 50  0001 C CNN
	1    1500 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5CBFE319
P 2900 3250
F 0 "C3" V 2750 3250 50  0000 C CNN
F 1 "22p" V 3050 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2938 3100 50  0001 C CNN
F 3 "~" H 2900 3250 50  0001 C CNN
	1    2900 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5CBFEAD2
P 2900 2850
F 0 "C2" V 2750 2850 50  0000 C CNN
F 1 "22p" V 3050 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2938 2700 50  0001 C CNN
F 3 "~" H 2900 2850 50  0001 C CNN
	1    2900 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 3250 2650 3250
$Comp
L power:GND #PWR011
U 1 1 5CBFF70C
P 2650 3400
F 0 "#PWR011" H 2650 3150 50  0001 C CNN
F 1 "GND" H 2655 3227 50  0000 C CNN
F 2 "" H 2650 3400 50  0001 C CNN
F 3 "" H 2650 3400 50  0001 C CNN
	1    2650 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5CC0027E
P 1050 2400
F 0 "J1" H 900 2850 50  0000 C CNN
F 1 "USB_B_Micro" H 1107 2776 50  0000 C CNN
F 2 "keyboard:MicroUSB_Aliexpress" H 1200 2350 50  0001 C CNN
F 3 "~" H 1200 2350 50  0001 C CNN
	1    1050 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 5CC02076
P 2600 1900
F 0 "F1" V 2500 1900 50  0000 C CNN
F 1 "500mA" V 2700 1900 50  0000 C CNN
F 2 "keyboard:Fuse_0805_2012Metric" H 2650 1700 50  0001 L CNN
F 3 "~" H 2600 1900 50  0001 C CNN
	1    2600 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1900 2750 1900
Wire Wire Line
	2750 1900 2750 1850
$Comp
L power:+5V #PWR012
U 1 1 5CC04280
P 2750 1850
F 0 "#PWR012" H 2750 1700 50  0001 C CNN
F 1 "+5V" H 2750 2000 50  0000 C CNN
F 2 "" H 2750 1850 50  0001 C CNN
F 3 "" H 2750 1850 50  0001 C CNN
	1    2750 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CC08125
P 3200 2350
F 0 "R3" V 3150 2200 50  0000 C CNN
F 1 "22R" V 3200 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 2350 50  0001 C CNN
F 3 "~" H 3200 2350 50  0001 C CNN
	1    3200 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CC180E7
P 3200 2550
F 0 "R4" V 3150 2400 50  0000 C CNN
F 1 "22R" V 3200 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 2550 50  0001 C CNN
F 3 "~" H 3200 2550 50  0001 C CNN
	1    3200 2550
	0    1    1    0   
$EndComp
Text Label 2925 2500 2    50   ~ 0
D-
Text Label 2925 2350 2    50   ~ 0
D+
Wire Wire Line
	3350 2550 3850 2550
NoConn ~ 1350 2600
Wire Wire Line
	950  2800 950  2850
Wire Wire Line
	950  2850 1000 2850
Wire Wire Line
	1050 2850 1050 2800
Wire Wire Line
	1000 2850 1000 2900
Connection ~ 1000 2850
Wire Wire Line
	1000 2850 1050 2850
$Comp
L power:GND #PWR06
U 1 1 5CC2D9CA
P 1000 2900
F 0 "#PWR06" H 1000 2650 50  0001 C CNN
F 1 "GND" H 1005 2727 50  0000 C CNN
F 2 "" H 1000 2900 50  0001 C CNN
F 3 "" H 1000 2900 50  0001 C CNN
	1    1000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2500 1550 2500
Wire Wire Line
	1350 2200 1650 2200
Wire Wire Line
	1650 1900 2150 1900
Wire Wire Line
	1650 1900 1650 2200
Wire Wire Line
	2150 1900 2150 1950
Connection ~ 2150 1900
Wire Wire Line
	2150 1900 2350 1900
$Comp
L power:GND #PWR09
U 1 1 5CC5D240
P 2150 3000
F 0 "#PWR09" H 2150 2750 50  0001 C CNN
F 1 "GND" H 2155 2827 50  0000 C CNN
F 2 "" H 2150 3000 50  0001 C CNN
F 3 "" H 2150 3000 50  0001 C CNN
	1    2150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2950 2150 3000
$Comp
L power:VBUS #PWR010
U 1 1 5CC63281
P 2350 1500
F 0 "#PWR010" H 2350 1350 50  0001 C CNN
F 1 "VBUS" H 2365 1673 50  0000 C CNN
F 2 "" H 2350 1500 50  0001 C CNN
F 3 "" H 2350 1500 50  0001 C CNN
	1    2350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1500 2350 1600
Connection ~ 2350 1900
Wire Wire Line
	2350 1900 2500 1900
$Comp
L power:VBUS #PWR016
U 1 1 5CC6529C
P 3900 2150
F 0 "#PWR016" H 3900 2000 50  0001 C CNN
F 1 "VBUS" H 3900 2300 50  0000 C CNN
F 2 "" H 3900 2150 50  0001 C CNN
F 3 "" H 3900 2150 50  0001 C CNN
	1    3900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2250 4050 2250
Wire Wire Line
	4050 2250 4050 2150
Wire Wire Line
	4050 2150 4100 2150
Connection ~ 4050 2150
Wire Wire Line
	3850 2350 3850 2400
Wire Wire Line
	3850 2400 4100 2400
Wire Wire Line
	3350 2350 3850 2350
Wire Wire Line
	3850 2550 3850 2500
Wire Wire Line
	3850 2500 4100 2500
Wire Wire Line
	3050 3250 3300 3250
Wire Wire Line
	3050 2850 3300 2850
$Comp
L Power_Protection:TPD2S017 U1
U 1 1 5CC2E3EE
P 2150 2450
F 0 "U1" H 2000 2800 50  0000 C CNN
F 1 "TPD2S017" H 2450 2800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 1400 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2s017.pdf" H 2150 2450 50  0001 C CNN
	1    2150 2450
	1    0    0    -1  
$EndComp
Connection ~ 3300 2850
Wire Wire Line
	3300 2850 3800 2850
Connection ~ 3300 3250
Wire Wire Line
	3300 3250 3800 3250
Wire Wire Line
	2750 2850 2650 2850
$Comp
L Device:C C4
U 1 1 5CCA7150
P 3250 3700
F 0 "C4" H 3365 3746 50  0000 L CNN
F 1 "1u" H 3365 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3288 3550 50  0001 C CNN
F 3 "~" H 3250 3700 50  0001 C CNN
	1    3250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3450 3250 3450
Wire Wire Line
	3250 3450 3250 3550
Wire Wire Line
	3250 3850 3250 3950
$Comp
L power:GND #PWR013
U 1 1 5CCACF4D
P 3250 3950
F 0 "#PWR013" H 3250 3700 50  0001 C CNN
F 1 "GND" H 3255 3777 50  0000 C CNN
F 2 "" H 3250 3950 50  0001 C CNN
F 3 "" H 3250 3950 50  0001 C CNN
	1    3250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3100 3800 3250
Wire Wire Line
	1400 1300 1500 1300
Connection ~ 1500 1300
Wire Wire Line
	1000 1300 950  1300
Wire Wire Line
	950  1300 950  1350
$Comp
L power:GND #PWR01
U 1 1 5CCC8544
P 950 1350
F 0 "#PWR01" H 950 1100 50  0001 C CNN
F 1 "GND" H 955 1177 50  0000 C CNN
F 2 "" H 950 1350 50  0001 C CNN
F 3 "" H 950 1350 50  0001 C CNN
	1    950  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2150 4050 2150
$Comp
L Device:C C1
U 1 1 5CCCD8C0
P 2150 1600
F 0 "C1" V 1898 1600 50  0000 C CNN
F 1 "100n" V 1989 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2188 1450 50  0001 C CNN
F 3 "~" H 2150 1600 50  0001 C CNN
	1    2150 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 1600 2350 1600
Connection ~ 2350 1600
Wire Wire Line
	2350 1600 2350 1900
Wire Wire Line
	2000 1600 1950 1600
Wire Wire Line
	1950 1600 1950 1650
$Comp
L power:GND #PWR08
U 1 1 5CCD3D7A
P 1950 1650
F 0 "#PWR08" H 1950 1400 50  0001 C CNN
F 1 "GND" H 1955 1477 50  0000 C CNN
F 2 "" H 1950 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CCD411E
P 3850 1250
F 0 "C6" V 3800 1350 50  0000 C CNN
F 1 "100n" V 3900 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3888 1100 50  0001 C CNN
F 3 "~" H 3850 1250 50  0001 C CNN
	1    3850 1250
	0    -1   1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5CCD4937
P 3850 1000
F 0 "C5" V 3900 850 50  0000 L CNN
F 1 "1u" V 3800 850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3888 850 50  0001 C CNN
F 3 "~" H 3850 1000 50  0001 C CNN
	1    3850 1000
	0    1    -1   0   
$EndComp
Wire Wire Line
	4000 1000 4050 1000
Connection ~ 4050 1000
Wire Wire Line
	4050 1000 4050 900 
Wire Wire Line
	4000 1250 4050 1250
Wire Wire Line
	4050 1250 4050 1000
Wire Wire Line
	3700 1000 3550 1000
Wire Wire Line
	3550 1250 3700 1250
Wire Wire Line
	3550 1000 3550 1250
Connection ~ 3550 1250
$Comp
L LED:WS2812B D2
U 1 1 5CD0BD8B
P 1300 5100
F 0 "D2" H 1100 5350 50  0000 L CNN
F 1 "WS2812B" H 1350 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1350 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1400 4725 50  0001 L TNN
	1    1300 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D3
U 1 1 5CD0EB06
P 2100 5100
F 0 "D3" H 1900 5350 50  0000 L CNN
F 1 "WS2812B" H 2150 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2150 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2200 4725 50  0001 L TNN
	1    2100 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D4
U 1 1 5CD0F0B8
P 2900 5100
F 0 "D4" H 2700 5350 50  0000 L CNN
F 1 "WS2812B" H 2950 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2950 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3000 4725 50  0001 L TNN
	1    2900 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D10
U 1 1 5CD11B04
P 3700 5100
F 0 "D10" H 3500 5350 50  0000 L CNN
F 1 "WS2812B" H 3750 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 3750 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 3800 4725 50  0001 L TNN
	1    3700 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D16
U 1 1 5CD11B0A
P 4500 5100
F 0 "D16" H 4300 5350 50  0000 L CNN
F 1 "WS2812B" H 4550 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 4550 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4600 4725 50  0001 L TNN
	1    4500 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D22
U 1 1 5CD11B10
P 5300 5100
F 0 "D22" H 5100 5350 50  0000 L CNN
F 1 "WS2812B" H 5350 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5350 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5400 4725 50  0001 L TNN
	1    5300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5100 1650 5100
Wire Wire Line
	2400 5100 2450 5100
Wire Wire Line
	3200 5100 3250 5100
Wire Wire Line
	4000 5100 4050 5100
Wire Wire Line
	4500 4800 4500 4750
Wire Wire Line
	4500 4750 3700 4750
Wire Wire Line
	1300 4750 1300 4650
Wire Wire Line
	1300 4750 1300 4800
Connection ~ 1300 4750
$Comp
L power:+5V #PWR019
U 1 1 5CD385C7
P 1300 4650
F 0 "#PWR019" H 1300 4500 50  0001 C CNN
F 1 "+5V" H 1315 4823 50  0000 C CNN
F 2 "" H 1300 4650 50  0001 C CNN
F 3 "" H 1300 4650 50  0001 C CNN
	1    1300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5400 4500 5450
Wire Wire Line
	2100 4750 2100 4800
Connection ~ 2100 4750
Wire Wire Line
	2100 4750 1300 4750
Wire Wire Line
	2900 4750 2900 4800
Connection ~ 2900 4750
Wire Wire Line
	2900 4750 2100 4750
Wire Wire Line
	3700 4750 3700 4800
Connection ~ 3700 4750
Wire Wire Line
	3700 4750 2900 4750
Wire Wire Line
	5300 4800 5300 4750
Wire Wire Line
	2100 5400 2100 5450
Wire Wire Line
	2900 5400 2900 5450
Wire Wire Line
	3700 5400 3700 5450
$Comp
L power:GND #PWR020
U 1 1 5CD6D2C9
P 1300 5450
F 0 "#PWR020" H 1300 5200 50  0001 C CNN
F 1 "GND" H 1305 5277 50  0000 C CNN
F 2 "" H 1300 5450 50  0001 C CNN
F 3 "" H 1300 5450 50  0001 C CNN
	1    1300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5400 5300 5450
Wire Wire Line
	5600 5100 5650 5100
Wire Wire Line
	550  5100 950  5100
Text Label 550  5100 0    50   ~ 0
LED_DAT
Text Label 6200 2800 2    50   ~ 0
LED_DAT
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5CE1B6F6
P 10400 5300
F 0 "J2" H 10200 5700 50  0000 R CNN
F 1 "AVR-ISP-6" H 10800 5700 50  0000 R CNN
F 2 "keyboard:AVR_Programmer_SMD" V 10150 5350 50  0001 C CNN
F 3 " ~" H 9125 4750 50  0001 C CNN
	1    10400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4800 10300 4750
Wire Wire Line
	10300 5700 10300 5750
$Comp
L power:GND #PWR03
U 1 1 5CE26CC2
P 10300 5750
F 0 "#PWR03" H 10300 5500 50  0001 C CNN
F 1 "GND" H 10305 5577 50  0000 C CNN
F 2 "" H 10300 5750 50  0001 C CNN
F 3 "" H 10300 5750 50  0001 C CNN
	1    10300 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5CE271A0
P 10300 4750
F 0 "#PWR02" H 10300 4600 50  0001 C CNN
F 1 "+5V" H 10315 4923 50  0000 C CNN
F 2 "" H 10300 4750 50  0001 C CNN
F 3 "" H 10300 4750 50  0001 C CNN
	1    10300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5100 11050 5100
Wire Wire Line
	10800 5200 11050 5200
Wire Wire Line
	10800 5300 11050 5300
Wire Wire Line
	10800 5400 11050 5400
Text Label 11050 5400 2    50   ~ 0
nRST
Text Label 11050 5300 2    50   ~ 0
SCK
Text Label 11050 5200 2    50   ~ 0
MOSI
Text Label 11050 5100 2    50   ~ 0
MISO
Wire Wire Line
	5800 1900 6200 1900
Wire Wire Line
	5800 1800 6200 1800
Wire Wire Line
	5800 1700 6200 1700
Text Label 1750 1300 2    50   ~ 0
nRST
Text Label 6200 1700 2    50   ~ 0
SCK
Text Label 6200 1800 2    50   ~ 0
MOSI
Text Label 6200 1900 2    50   ~ 0
MISO
Wire Wire Line
	4100 4200 4050 4200
Connection ~ 4050 4200
Wire Wire Line
	4050 4200 4050 4250
Wire Wire Line
	4100 4100 4050 4100
Connection ~ 4050 4100
Wire Wire Line
	4050 4100 4050 4200
Wire Wire Line
	4100 4000 4050 4000
Connection ~ 4050 4000
Wire Wire Line
	4050 4000 4050 4100
Wire Wire Line
	4100 3900 4050 3900
Connection ~ 4050 3900
Wire Wire Line
	4050 3900 4050 4000
Wire Wire Line
	4050 3800 4100 3800
Wire Wire Line
	4050 3800 4050 3900
$Comp
L power:GND #PWR018
U 1 1 5CC6A8D1
P 4050 4250
F 0 "#PWR018" H 4050 4000 50  0001 C CNN
F 1 "GND" H 4055 4077 50  0000 C CNN
F 2 "" H 4050 4250 50  0001 C CNN
F 3 "" H 4050 4250 50  0001 C CNN
	1    4050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2000 4050 2000
Wire Wire Line
	4050 2000 4050 1900
Wire Wire Line
	4050 1600 4100 1600
Connection ~ 4050 1600
Wire Wire Line
	4050 1600 4050 1500
Wire Wire Line
	4100 1700 4050 1700
Connection ~ 4050 1700
Wire Wire Line
	4050 1700 4050 1600
Wire Wire Line
	4100 1800 4050 1800
Connection ~ 4050 1800
Wire Wire Line
	4050 1800 4050 1700
Wire Wire Line
	4100 1900 4050 1900
Connection ~ 4050 1900
Wire Wire Line
	4050 1900 4050 1800
Wire Wire Line
	2650 2850 2650 3050
Wire Wire Line
	2650 3250 2650 3400
Wire Wire Line
	3800 3100 4100 3100
Wire Wire Line
	3800 2850 3800 3000
Wire Wire Line
	3800 3000 4100 3000
Text Label 3900 2700 0    50   ~ 0
nRST
Wire Wire Line
	3900 2700 4100 2700
$Comp
L Device:C C7
U 1 1 5CD39D82
P 3850 1500
F 0 "C7" V 3800 1600 50  0000 C CNN
F 1 "100n" V 3900 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3888 1350 50  0001 C CNN
F 3 "~" H 3850 1500 50  0001 C CNN
	1    3850 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	3550 1500 3700 1500
Wire Wire Line
	3550 1250 3550 1500
Connection ~ 3550 1500
Wire Wire Line
	3550 1500 3550 1600
$Comp
L power:GND #PWR014
U 1 1 5CD39D8C
P 3550 1600
F 0 "#PWR014" H 3550 1350 50  0001 C CNN
F 1 "GND" H 3550 1450 50  0000 C CNN
F 2 "" H 3550 1600 50  0001 C CNN
F 3 "" H 3550 1600 50  0001 C CNN
	1    3550 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 1250 4050 1500
Wire Wire Line
	4050 1500 4000 1500
Connection ~ 4050 1250
Connection ~ 4050 1500
Wire Wire Line
	7350 1400 7300 1400
Wire Wire Line
	7350 2000 7300 2000
Wire Wire Line
	7350 2600 7300 2600
Wire Wire Line
	7300 2600 7300 2650
Wire Wire Line
	7300 2850 7300 2900
Wire Wire Line
	7350 3200 7300 3200
Wire Wire Line
	8000 1100 8000 1400
Wire Wire Line
	7950 3200 8000 3200
Wire Wire Line
	7950 2600 8000 2600
Wire Wire Line
	7950 2000 8000 2000
Wire Wire Line
	7950 1400 8000 1400
Wire Wire Line
	8250 1400 8200 1400
Wire Wire Line
	8250 2000 8200 2000
Wire Wire Line
	8250 2600 8200 2600
Wire Wire Line
	8200 2600 8200 2650
Wire Wire Line
	8200 2850 8200 2900
Wire Wire Line
	8250 3200 8200 3200
Wire Wire Line
	8900 1100 8900 1400
Wire Wire Line
	8850 3200 8900 3200
Wire Wire Line
	8850 2600 8900 2600
Wire Wire Line
	8850 2000 8900 2000
Wire Wire Line
	8850 1400 8900 1400
Wire Wire Line
	9150 1400 9100 1400
Wire Wire Line
	9150 2000 9100 2000
Wire Wire Line
	9150 2600 9100 2600
Wire Wire Line
	9100 2600 9100 2650
Wire Wire Line
	9100 2850 9100 2900
Wire Wire Line
	9150 3200 9100 3200
Wire Wire Line
	9800 1100 9800 1400
Wire Wire Line
	9750 3200 9800 3200
Wire Wire Line
	9750 2600 9800 2600
Wire Wire Line
	9750 2000 9800 2000
Wire Wire Line
	9750 1400 9800 1400
Wire Wire Line
	10050 1400 10000 1400
Wire Wire Line
	10050 2000 10000 2000
Wire Wire Line
	10050 2600 10000 2600
Wire Wire Line
	10000 2600 10000 2650
Wire Wire Line
	10000 2850 10000 2900
Wire Wire Line
	10050 3200 10000 3200
Wire Wire Line
	10700 1100 10700 1400
Wire Wire Line
	10650 3200 10700 3200
Wire Wire Line
	10650 2600 10700 2600
Connection ~ 10700 2600
Wire Wire Line
	10700 2600 10700 3200
Wire Wire Line
	10650 2000 10700 2000
Connection ~ 10700 2000
Wire Wire Line
	10700 2000 10700 2600
Wire Wire Line
	10650 1400 10700 1400
Connection ~ 10700 1400
Wire Wire Line
	10700 1400 10700 2000
Wire Wire Line
	7050 2900 7300 2900
Connection ~ 7300 2900
Wire Wire Line
	7300 2900 8200 2900
Connection ~ 8200 2900
Wire Wire Line
	8200 2900 9100 2900
Connection ~ 9100 2900
Wire Wire Line
	9100 2900 10000 2900
Text Label 7050 2900 2    50   ~ 0
row3
Text Notes 8350 800  0    100  ~ 0
Switch Array
Text Notes 4825 4575 0    100  ~ 0
LEDs
Text Notes 10150 4450 0    100  ~ 0
ICSP
Text Notes 2150 1000 0    100  ~ 0
Microcontroller
Wire Wire Line
	4800 5100 4850 5100
Wire Wire Line
	4500 4750 5300 4750
Connection ~ 4500 4750
Text Label 6200 3900 2    50   ~ 0
col1
Text Label 6200 3800 2    50   ~ 0
col2
Text Label 6200 3200 2    50   ~ 0
col3
Text Label 6200 3000 2    50   ~ 0
col4
Text Label 6200 3700 2    50   ~ 0
row1
Text Label 6200 2550 2    50   ~ 0
row2
Text Label 6200 2450 2    50   ~ 0
row3
Text Label 6200 2200 2    50   ~ 0
row4
Connection ~ 2650 3250
Text Label 10700 1100 1    50   ~ 0
col4
Text Label 9800 1100 1    50   ~ 0
col3
Text Label 8900 1100 1    50   ~ 0
col2
Text Label 8000 1100 1    50   ~ 0
col1
$Comp
L Switch:SW_Push SW1
U 1 1 5D2BE1D3
P 1200 1300
F 0 "SW1" H 1200 1585 50  0000 C CNN
F 1 "SW_Push" H 1200 1494 50  0000 C CNN
F 2 "keyboard:Small_Tact_Switch" H 1200 1500 50  0001 C CNN
F 3 "~" H 1200 1500 50  0001 C CNN
	1    1200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3550 3700 3600
Wire Wire Line
	3700 3550 4100 3550
$Comp
L Device:R R5
U 1 1 5D324ECA
P 3700 3750
F 0 "R5" H 3770 3796 50  0000 L CNN
F 1 "10K" H 3770 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3630 3750 50  0001 C CNN
F 3 "~" H 3700 3750 50  0001 C CNN
	1    3700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3900 3700 3950
$Comp
L power:GND #PWR015
U 1 1 5D336893
P 3700 3950
F 0 "#PWR015" H 3700 3700 50  0001 C CNN
F 1 "GND" H 3705 3777 50  0000 C CNN
F 2 "" H 3700 3950 50  0001 C CNN
F 3 "" H 3700 3950 50  0001 C CNN
	1    3700 3950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D347FE4
P 2800 1900
F 0 "#FLG01" H 2800 1975 50  0001 C CNN
F 1 "PWR_FLAG" V 2800 2028 50  0000 L CNN
F 2 "" H 2800 1900 50  0001 C CNN
F 3 "~" H 2800 1900 50  0001 C CNN
	1    2800 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 1900 2750 1900
Connection ~ 2750 1900
$Comp
L keyboard:ATMEGA32U4 U2
U 1 1 5CBFF289
P 5150 2650
F 0 "U2" H 4950 3987 60  0000 C CNN
F 1 "ATMEGA32U4" H 4950 3881 60  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5150 2650 60  0001 C CNN
F 3 "" H 5150 2650 60  0000 C CNN
	1    5150 2650
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K1
U 1 1 5CC00E9D
P 7650 1400
F 0 "K1" H 7650 1633 60  0000 C CNN
F 1 "KEYSW" H 7650 1300 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7650 1400 60  0001 C CNN
F 3 "" H 7650 1400 60  0000 C CNN
	1    7650 1400
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K2
U 1 1 5CC017E3
P 7650 2000
F 0 "K2" H 7650 2233 60  0000 C CNN
F 1 "KEYSW" H 7650 1900 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7650 2000 60  0001 C CNN
F 3 "" H 7650 2000 60  0000 C CNN
	1    7650 2000
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K3
U 1 1 5CC01C35
P 7650 2600
F 0 "K3" H 7650 2833 60  0000 C CNN
F 1 "KEYSW" H 7650 2500 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7650 2600 60  0001 C CNN
F 3 "" H 7650 2600 60  0000 C CNN
	1    7650 2600
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K4
U 1 1 5CC02078
P 7650 3200
F 0 "K4" H 7650 3433 60  0000 C CNN
F 1 "KEYSW" H 7650 3100 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7650 3200 60  0001 C CNN
F 3 "" H 7650 3200 60  0000 C CNN
	1    7650 3200
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K6
U 1 1 5CC292A9
P 8550 1400
F 0 "K6" H 8550 1633 60  0000 C CNN
F 1 "KEYSW" H 8550 1300 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8550 1400 60  0001 C CNN
F 3 "" H 8550 1400 60  0000 C CNN
	1    8550 1400
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K7
U 1 1 5CC292AF
P 8550 2000
F 0 "K7" H 8550 2233 60  0000 C CNN
F 1 "KEYSW" H 8550 1900 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8550 2000 60  0001 C CNN
F 3 "" H 8550 2000 60  0000 C CNN
	1    8550 2000
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K8
U 1 1 5CC292B5
P 8550 2600
F 0 "K8" H 8550 2833 60  0000 C CNN
F 1 "KEYSW" H 8550 2500 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8550 2600 60  0001 C CNN
F 3 "" H 8550 2600 60  0000 C CNN
	1    8550 2600
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K9
U 1 1 5CC292BB
P 8550 3200
F 0 "K9" H 8550 3433 60  0000 C CNN
F 1 "KEYSW" H 8550 3100 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8550 3200 60  0001 C CNN
F 3 "" H 8550 3200 60  0000 C CNN
	1    8550 3200
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K11
U 1 1 5CC3B338
P 9450 1400
F 0 "K11" H 9450 1633 60  0000 C CNN
F 1 "KEYSW" H 9450 1300 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9450 1400 60  0001 C CNN
F 3 "" H 9450 1400 60  0000 C CNN
	1    9450 1400
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K12
U 1 1 5CC3B33E
P 9450 2000
F 0 "K12" H 9450 2233 60  0000 C CNN
F 1 "KEYSW" H 9450 1900 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9450 2000 60  0001 C CNN
F 3 "" H 9450 2000 60  0000 C CNN
	1    9450 2000
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K13
U 1 1 5CC3B344
P 9450 2600
F 0 "K13" H 9450 2833 60  0000 C CNN
F 1 "KEYSW" H 9450 2500 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9450 2600 60  0001 C CNN
F 3 "" H 9450 2600 60  0000 C CNN
	1    9450 2600
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K14
U 1 1 5CC3B34A
P 9450 3200
F 0 "K14" H 9450 3433 60  0000 C CNN
F 1 "KEYSW" H 9450 3100 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9450 3200 60  0001 C CNN
F 3 "" H 9450 3200 60  0000 C CNN
	1    9450 3200
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K16
U 1 1 5CC4D1B0
P 10350 1400
F 0 "K16" H 10350 1633 60  0000 C CNN
F 1 "KEYSW" H 10350 1300 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 10350 1400 60  0001 C CNN
F 3 "" H 10350 1400 60  0000 C CNN
	1    10350 1400
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K17
U 1 1 5CC4D1B6
P 10350 2000
F 0 "K17" H 10350 2233 60  0000 C CNN
F 1 "KEYSW" H 10350 1900 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 10350 2000 60  0001 C CNN
F 3 "" H 10350 2000 60  0000 C CNN
	1    10350 2000
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K18
U 1 1 5CC4D1BC
P 10350 2600
F 0 "K18" H 10350 2833 60  0000 C CNN
F 1 "KEYSW" H 10350 2500 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 10350 2600 60  0001 C CNN
F 3 "" H 10350 2600 60  0000 C CNN
	1    10350 2600
	1    0    0    -1  
$EndComp
$Comp
L keyboard:KEYSW K19
U 1 1 5CC4D1C2
P 10350 3200
F 0 "K19" H 10350 3433 60  0000 C CNN
F 1 "KEYSW" H 10350 3100 60  0001 C CNN
F 2 "keyboard:SW_Cherry_MX1A_1.00u_PCB" H 10350 3200 60  0001 C CNN
F 3 "" H 10350 3200 60  0000 C CNN
	1    10350 3200
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D23
U 1 1 5CC314B5
P 6100 5100
F 0 "D23" H 5900 5350 50  0000 L CNN
F 1 "WS2812B" H 6150 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6150 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6200 4725 50  0001 L TNN
	1    6100 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D29
U 1 1 5CC314BB
P 6900 5100
F 0 "D29" H 6700 5350 50  0000 L CNN
F 1 "WS2812B" H 6950 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6950 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7000 4725 50  0001 L TNN
	1    6900 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D30
U 1 1 5CC314C1
P 7700 5100
F 0 "D30" H 7500 5350 50  0000 L CNN
F 1 "WS2812B" H 7750 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7750 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7800 4725 50  0001 L TNN
	1    7700 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D31
U 1 1 5CC314C7
P 8500 5100
F 0 "D31" H 8300 5350 50  0000 L CNN
F 1 "WS2812B" H 8550 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8550 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8600 4725 50  0001 L TNN
	1    8500 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D32
U 1 1 5CC314CD
P 9300 5100
F 0 "D32" H 9100 5350 50  0000 L CNN
F 1 "WS2812B" H 9350 5350 50  0000 L CNN
F 2 "keyboard:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 9350 4800 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9400 4725 50  0001 L TNN
	1    9300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5100 6450 5100
Wire Wire Line
	7200 5100 7250 5100
Wire Wire Line
	8000 5100 8050 5100
Wire Wire Line
	8500 4800 8500 4750
Wire Wire Line
	8500 4750 7700 4750
Wire Wire Line
	8500 5400 8500 5450
Wire Wire Line
	6100 4750 6100 4800
Connection ~ 6100 4750
Wire Wire Line
	6100 4750 5300 4750
Wire Wire Line
	6900 4750 6900 4800
Connection ~ 6900 4750
Wire Wire Line
	6900 4750 6100 4750
Wire Wire Line
	7700 4750 7700 4800
Connection ~ 7700 4750
Wire Wire Line
	7700 4750 6900 4750
Wire Wire Line
	9300 4800 9300 4750
Wire Wire Line
	6100 5400 6100 5450
Wire Wire Line
	6900 5400 6900 5450
Wire Wire Line
	7700 5400 7700 5450
Wire Wire Line
	9300 5400 9300 5450
Wire Wire Line
	8800 5100 8850 5100
Connection ~ 8500 4750
Connection ~ 5300 4750
Wire Wire Line
	8500 4750 9300 4750
Wire Wire Line
	1300 5400 1300 5450
$Comp
L power:GND #PWR0101
U 1 1 5CD40F12
P 2100 5450
F 0 "#PWR0101" H 2100 5200 50  0001 C CNN
F 1 "GND" H 2105 5277 50  0000 C CNN
F 2 "" H 2100 5450 50  0001 C CNN
F 3 "" H 2100 5450 50  0001 C CNN
	1    2100 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CD4130A
P 2900 5450
F 0 "#PWR0102" H 2900 5200 50  0001 C CNN
F 1 "GND" H 2905 5277 50  0000 C CNN
F 2 "" H 2900 5450 50  0001 C CNN
F 3 "" H 2900 5450 50  0001 C CNN
	1    2900 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5CD4179A
P 3700 5450
F 0 "#PWR0103" H 3700 5200 50  0001 C CNN
F 1 "GND" H 3705 5277 50  0000 C CNN
F 2 "" H 3700 5450 50  0001 C CNN
F 3 "" H 3700 5450 50  0001 C CNN
	1    3700 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5CD41AA6
P 4500 5450
F 0 "#PWR0104" H 4500 5200 50  0001 C CNN
F 1 "GND" H 4505 5277 50  0000 C CNN
F 2 "" H 4500 5450 50  0001 C CNN
F 3 "" H 4500 5450 50  0001 C CNN
	1    4500 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CD41D2C
P 6100 5450
F 0 "#PWR0105" H 6100 5200 50  0001 C CNN
F 1 "GND" H 6105 5277 50  0000 C CNN
F 2 "" H 6100 5450 50  0001 C CNN
F 3 "" H 6100 5450 50  0001 C CNN
	1    6100 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CD41F4C
P 5300 5450
F 0 "#PWR0106" H 5300 5200 50  0001 C CNN
F 1 "GND" H 5305 5277 50  0000 C CNN
F 2 "" H 5300 5450 50  0001 C CNN
F 3 "" H 5300 5450 50  0001 C CNN
	1    5300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CD4250C
P 6900 5450
F 0 "#PWR0107" H 6900 5200 50  0001 C CNN
F 1 "GND" H 6905 5277 50  0000 C CNN
F 2 "" H 6900 5450 50  0001 C CNN
F 3 "" H 6900 5450 50  0001 C CNN
	1    6900 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CD42836
P 7700 5450
F 0 "#PWR0108" H 7700 5200 50  0001 C CNN
F 1 "GND" H 7705 5277 50  0000 C CNN
F 2 "" H 7700 5450 50  0001 C CNN
F 3 "" H 7700 5450 50  0001 C CNN
	1    7700 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CD42C41
P 8500 5450
F 0 "#PWR0109" H 8500 5200 50  0001 C CNN
F 1 "GND" H 8505 5277 50  0000 C CNN
F 2 "" H 8500 5450 50  0001 C CNN
F 3 "" H 8500 5450 50  0001 C CNN
	1    8500 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5CD42E2D
P 9300 5450
F 0 "#PWR0110" H 9300 5200 50  0001 C CNN
F 1 "GND" H 9305 5277 50  0000 C CNN
F 2 "" H 9300 5450 50  0001 C CNN
F 3 "" H 9300 5450 50  0001 C CNN
	1    9300 5450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5CD43FF4
P 1300 5850
F 0 "JP1" H 1300 5950 50  0000 C CNN
F 1 "Jumper" H 1300 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1300 5850 50  0001 C CNN
F 3 "~" H 1300 5850 50  0001 C CNN
	1    1300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5850 950  5850
Wire Wire Line
	950  5850 950  5100
Connection ~ 950  5100
Wire Wire Line
	950  5100 1000 5100
Wire Wire Line
	1450 5850 1650 5850
Wire Wire Line
	1650 5850 1650 5100
Connection ~ 1650 5100
Wire Wire Line
	1650 5100 1750 5100
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5CD7D2E5
P 2100 5850
F 0 "JP2" H 2100 5950 50  0000 C CNN
F 1 "Jumper" H 2100 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2100 5850 50  0001 C CNN
F 3 "~" H 2100 5850 50  0001 C CNN
	1    2100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5850 1750 5850
Wire Wire Line
	1750 5850 1750 5100
Wire Wire Line
	2250 5850 2450 5850
Wire Wire Line
	2450 5850 2450 5100
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5CD9151C
P 2900 5850
F 0 "JP3" H 2900 5950 50  0000 C CNN
F 1 "Jumper" H 2900 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2900 5850 50  0001 C CNN
F 3 "~" H 2900 5850 50  0001 C CNN
	1    2900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5850 2550 5850
Wire Wire Line
	2550 5850 2550 5100
Wire Wire Line
	3050 5850 3250 5850
Wire Wire Line
	3250 5850 3250 5100
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5CDA5E6B
P 3700 5850
F 0 "JP4" H 3700 5950 50  0000 C CNN
F 1 "Jumper" H 3700 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3700 5850 50  0001 C CNN
F 3 "~" H 3700 5850 50  0001 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5850 3350 5850
Wire Wire Line
	3350 5850 3350 5100
Wire Wire Line
	3850 5850 4050 5850
Wire Wire Line
	4050 5850 4050 5100
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5CDBB602
P 4500 5850
F 0 "JP5" H 4500 5950 50  0000 C CNN
F 1 "Jumper" H 4500 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4500 5850 50  0001 C CNN
F 3 "~" H 4500 5850 50  0001 C CNN
	1    4500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5850 4150 5850
Wire Wire Line
	4150 5850 4150 5100
Wire Wire Line
	4650 5850 4850 5850
Wire Wire Line
	4850 5850 4850 5100
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5CDD1634
P 5300 5850
F 0 "JP6" H 5300 5950 50  0000 C CNN
F 1 "Jumper" H 5300 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 5850 50  0001 C CNN
F 3 "~" H 5300 5850 50  0001 C CNN
	1    5300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5850 4950 5850
Wire Wire Line
	4950 5850 4950 5100
Wire Wire Line
	5450 5850 5650 5850
Wire Wire Line
	5650 5850 5650 5100
$Comp
L Jumper:SolderJumper_2_Open JP7
U 1 1 5CDE81E2
P 6100 5850
F 0 "JP7" H 6100 5950 50  0000 C CNN
F 1 "Jumper" H 6100 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6100 5850 50  0001 C CNN
F 3 "~" H 6100 5850 50  0001 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5850 5750 5850
Wire Wire Line
	5750 5850 5750 5100
Wire Wire Line
	6250 5850 6450 5850
Wire Wire Line
	6450 5850 6450 5100
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 5CDFF5BA
P 6900 5850
F 0 "JP8" H 6900 5950 50  0000 C CNN
F 1 "Jumper" H 6900 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6900 5850 50  0001 C CNN
F 3 "~" H 6900 5850 50  0001 C CNN
	1    6900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5850 6550 5850
Wire Wire Line
	6550 5850 6550 5100
Wire Wire Line
	7050 5850 7250 5850
Wire Wire Line
	7250 5850 7250 5100
$Comp
L Jumper:SolderJumper_2_Open JP9
U 1 1 5CE173B7
P 7700 5850
F 0 "JP9" H 7700 5950 50  0000 C CNN
F 1 "Jumper" H 7700 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7700 5850 50  0001 C CNN
F 3 "~" H 7700 5850 50  0001 C CNN
	1    7700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5850 7350 5850
Wire Wire Line
	7350 5850 7350 5100
Wire Wire Line
	7850 5850 8050 5850
Wire Wire Line
	8050 5850 8050 5100
$Comp
L Jumper:SolderJumper_2_Open JP10
U 1 1 5CE2FC07
P 8500 5850
F 0 "JP10" H 8500 5950 50  0000 C CNN
F 1 "Jumper" H 8500 5700 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 8500 5850 50  0001 C CNN
F 3 "~" H 8500 5850 50  0001 C CNN
	1    8500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5850 8150 5850
Wire Wire Line
	8150 5850 8150 5100
Wire Wire Line
	8650 5850 8850 5850
Wire Wire Line
	8850 5850 8850 5100
Connection ~ 8150 5100
Wire Wire Line
	8150 5100 8200 5100
Connection ~ 8850 5100
Connection ~ 1750 5100
Wire Wire Line
	1750 5100 1800 5100
Connection ~ 2450 5100
Wire Wire Line
	2450 5100 2550 5100
Connection ~ 2550 5100
Wire Wire Line
	2550 5100 2600 5100
Connection ~ 3250 5100
Wire Wire Line
	3250 5100 3350 5100
Connection ~ 3350 5100
Wire Wire Line
	3350 5100 3400 5100
Connection ~ 4050 5100
Wire Wire Line
	4050 5100 4150 5100
Connection ~ 4150 5100
Wire Wire Line
	4150 5100 4200 5100
Connection ~ 4850 5100
Wire Wire Line
	4850 5100 4950 5100
Connection ~ 4950 5100
Wire Wire Line
	4950 5100 5000 5100
Connection ~ 5650 5100
Wire Wire Line
	5650 5100 5750 5100
Connection ~ 5750 5100
Wire Wire Line
	5750 5100 5800 5100
Connection ~ 6450 5100
Wire Wire Line
	6450 5100 6550 5100
Connection ~ 6550 5100
Wire Wire Line
	6550 5100 6600 5100
Connection ~ 7250 5100
Wire Wire Line
	7250 5100 7350 5100
Connection ~ 7350 5100
Wire Wire Line
	7350 5100 7400 5100
Connection ~ 8050 5100
Wire Wire Line
	8050 5100 8150 5100
Wire Wire Line
	850  4225 1200 4225
Text Label 850  4225 0    50   ~ 0
LED_DAT
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5CDB6972
P 1400 4225
F 0 "J3" H 1450 4575 50  0000 C CNN
F 1 "WS2812B Strip" H 1500 4475 50  0000 C CNN
F 2 "keyboard:PinPad_1x03_P2.54mm" H 1400 4225 50  0001 C CNN
F 3 "~" H 1400 4225 50  0001 C CNN
	1    1400 4225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 4125 850  4125
Wire Wire Line
	850  4125 850  4075
Wire Wire Line
	1200 4325 850  4325
Wire Wire Line
	850  4325 850  4375
$Comp
L power:GND #PWR022
U 1 1 5CDC4F42
P 850 4375
F 0 "#PWR022" H 850 4125 50  0001 C CNN
F 1 "GND" H 855 4202 50  0000 C CNN
F 2 "" H 850 4375 50  0001 C CNN
F 3 "" H 850 4375 50  0001 C CNN
	1    850  4375
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5CDC53CB
P 850 4075
F 0 "#PWR021" H 850 3925 50  0001 C CNN
F 1 "+5V" H 865 4248 50  0000 C CNN
F 2 "" H 850 4075 50  0001 C CNN
F 3 "" H 850 4075 50  0001 C CNN
	1    850  4075
	-1   0    0    -1  
$EndComp
Text Notes 2825 6325 0    100  ~ 0
Rotary Encoders
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 5CC6A4E2
P 2500 7000
F 0 "SW2" H 2500 7367 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2500 7276 50  0000 C CNN
F 2 "keyboard:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 2350 7160 50  0001 C CNN
F 3 "~" H 2500 7260 50  0001 C CNN
	1    2500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7100 2850 7100
$Comp
L power:GND #PWR025
U 1 1 5CC889A1
P 3250 7250
F 0 "#PWR025" H 3250 7000 50  0001 C CNN
F 1 "GND" H 3255 7077 50  0000 C CNN
F 2 "" H 3250 7250 50  0001 C CNN
F 3 "" H 3250 7250 50  0001 C CNN
	1    3250 7250
	1    0    0    -1  
$EndComp
Text Label 3300 7100 2    50   ~ 0
ENC_1_SW
Wire Wire Line
	2200 7000 2100 7000
Wire Wire Line
	2100 7000 2100 7150
$Comp
L power:GND #PWR024
U 1 1 5CCFAF91
P 2100 7150
F 0 "#PWR024" H 2100 6900 50  0001 C CNN
F 1 "GND" H 2105 6977 50  0000 C CNN
F 2 "" H 2100 7150 50  0001 C CNN
F 3 "" H 2100 7150 50  0001 C CNN
	1    2100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7100 1900 7100
Text Label 550  6900 0    50   ~ 0
ENC_1_A
Text Label 550  7100 0    50   ~ 0
ENC_1_B
$Comp
L Device:R R6
U 1 1 5CC6E64B
P 1600 6650
F 0 "R6" H 1400 6700 50  0000 L CNN
F 1 "10K" H 1400 6600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 6650 50  0001 C CNN
F 3 "~" H 1600 6650 50  0001 C CNN
	1    1600 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CC6F580
P 1900 6650
F 0 "R7" H 1700 6700 50  0000 L CNN
F 1 "10K" H 1700 6600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1830 6650 50  0001 C CNN
F 3 "~" H 1900 6650 50  0001 C CNN
	1    1900 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6800 1600 6900
Wire Wire Line
	1900 6800 1900 7100
Wire Wire Line
	1900 6500 1900 6450
Wire Wire Line
	1600 6500 1600 6450
$Comp
L power:+5V #PWR026
U 1 1 5CCE9F58
P 1600 6450
F 0 "#PWR026" H 1600 6300 50  0001 C CNN
F 1 "+5V" H 1615 6623 50  0000 C CNN
F 2 "" H 1600 6450 50  0001 C CNN
F 3 "" H 1600 6450 50  0001 C CNN
	1    1600 6450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5CCEA6BE
P 1900 6450
F 0 "#PWR027" H 1900 6300 50  0001 C CNN
F 1 "+5V" H 1915 6623 50  0000 C CNN
F 2 "" H 1900 6450 50  0001 C CNN
F 3 "" H 1900 6450 50  0001 C CNN
	1    1900 6450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5CD090DF
P 3050 7200
F 0 "R8" V 3150 7100 50  0000 L CNN
F 1 "10K" V 3050 7125 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2980 7200 50  0001 C CNN
F 3 "~" H 3050 7200 50  0001 C CNN
	1    3050 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 7200 3250 7200
Wire Wire Line
	3250 7200 3250 7250
Wire Wire Line
	2900 7200 2850 7200
Wire Wire Line
	2850 7200 2850 7100
Wire Wire Line
	2850 7100 3300 7100
Connection ~ 2850 7100
Wire Wire Line
	2800 6900 2975 6900
Wire Wire Line
	2975 6900 2975 6775
$Comp
L power:+5V #PWR028
U 1 1 5CDE7E02
P 2975 6775
F 0 "#PWR028" H 2975 6625 50  0001 C CNN
F 1 "+5V" H 2990 6948 50  0000 C CNN
F 2 "" H 2975 6775 50  0001 C CNN
F 3 "" H 2975 6775 50  0001 C CNN
	1    2975 6775
	-1   0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 5CE0D2AF
P 5475 6975
F 0 "SW3" H 5475 7342 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 5475 7251 50  0000 C CNN
F 2 "keyboard:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 5325 7135 50  0001 C CNN
F 3 "~" H 5475 7235 50  0001 C CNN
	1    5475 6975
	1    0    0    -1  
$EndComp
Wire Wire Line
	5775 7075 5825 7075
$Comp
L power:GND #PWR033
U 1 1 5CE0D2B6
P 6225 7225
F 0 "#PWR033" H 6225 6975 50  0001 C CNN
F 1 "GND" H 6230 7052 50  0000 C CNN
F 2 "" H 6225 7225 50  0001 C CNN
F 3 "" H 6225 7225 50  0001 C CNN
	1    6225 7225
	1    0    0    -1  
$EndComp
Text Label 6275 7075 2    50   ~ 0
ENC_2_SW
Wire Wire Line
	5175 6975 5075 6975
Wire Wire Line
	5075 6975 5075 7125
$Comp
L power:GND #PWR031
U 1 1 5CE0D2BF
P 5075 7125
F 0 "#PWR031" H 5075 6875 50  0001 C CNN
F 1 "GND" H 5080 6952 50  0000 C CNN
F 2 "" H 5075 7125 50  0001 C CNN
F 3 "" H 5075 7125 50  0001 C CNN
	1    5075 7125
	1    0    0    -1  
$EndComp
Text Label 3525 6875 0    50   ~ 0
ENC_2_A
Text Label 3525 7075 0    50   ~ 0
ENC_2_B
$Comp
L Device:R R9
U 1 1 5CE0D2C9
P 4575 6625
F 0 "R9" H 4375 6675 50  0000 L CNN
F 1 "10K" H 4375 6575 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4505 6625 50  0001 C CNN
F 3 "~" H 4575 6625 50  0001 C CNN
	1    4575 6625
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5CE0D2CF
P 4875 6625
F 0 "R10" H 4675 6675 50  0000 L CNN
F 1 "10K" H 4675 6575 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4805 6625 50  0001 C CNN
F 3 "~" H 4875 6625 50  0001 C CNN
	1    4875 6625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 6775 4575 6875
Wire Wire Line
	4875 6475 4875 6425
Wire Wire Line
	4575 6475 4575 6425
$Comp
L power:+5V #PWR029
U 1 1 5CE0D2DD
P 4575 6425
F 0 "#PWR029" H 4575 6275 50  0001 C CNN
F 1 "+5V" H 4590 6598 50  0000 C CNN
F 2 "" H 4575 6425 50  0001 C CNN
F 3 "" H 4575 6425 50  0001 C CNN
	1    4575 6425
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 5CE0D2E3
P 4875 6425
F 0 "#PWR030" H 4875 6275 50  0001 C CNN
F 1 "+5V" H 4890 6598 50  0000 C CNN
F 2 "" H 4875 6425 50  0001 C CNN
F 3 "" H 4875 6425 50  0001 C CNN
	1    4875 6425
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5CE0D2E9
P 6025 7175
F 0 "R11" V 6125 7075 50  0000 L CNN
F 1 "10K" V 6025 7100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5955 7175 50  0001 C CNN
F 3 "~" H 6025 7175 50  0001 C CNN
	1    6025 7175
	0    1    1    0   
$EndComp
Wire Wire Line
	6175 7175 6225 7175
Wire Wire Line
	6225 7175 6225 7225
Wire Wire Line
	5875 7175 5825 7175
Wire Wire Line
	5825 7175 5825 7075
Wire Wire Line
	5825 7075 6275 7075
Connection ~ 5825 7075
Wire Wire Line
	5775 6875 5950 6875
Wire Wire Line
	5950 6875 5950 6750
$Comp
L power:+5V #PWR032
U 1 1 5CE0D2F7
P 5950 6750
F 0 "#PWR032" H 5950 6600 50  0001 C CNN
F 1 "+5V" H 5965 6923 50  0000 C CNN
F 2 "" H 5950 6750 50  0001 C CNN
F 3 "" H 5950 6750 50  0001 C CNN
	1    5950 6750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10000 2000 10000 2050
Wire Wire Line
	9100 2000 9100 2050
Wire Wire Line
	8200 2000 8200 2050
Wire Wire Line
	7300 2000 7300 2050
Text Label 7050 2300 2    50   ~ 0
row2
Wire Wire Line
	9100 2300 10000 2300
Connection ~ 9100 2300
Wire Wire Line
	8200 2300 9100 2300
Connection ~ 8200 2300
Wire Wire Line
	7300 2300 8200 2300
Connection ~ 7300 2300
Wire Wire Line
	7050 2300 7300 2300
Wire Wire Line
	10000 2250 10000 2300
Wire Wire Line
	9100 2250 9100 2300
Wire Wire Line
	8200 2250 8200 2300
Wire Wire Line
	7300 2250 7300 2300
Wire Wire Line
	10000 1400 10000 1450
Wire Wire Line
	9100 1400 9100 1450
Wire Wire Line
	8200 1400 8200 1450
Wire Wire Line
	7300 1400 7300 1450
Text Label 7050 1700 2    50   ~ 0
row1
Wire Wire Line
	9100 1700 10000 1700
Connection ~ 9100 1700
Wire Wire Line
	8200 1700 9100 1700
Connection ~ 8200 1700
Wire Wire Line
	7300 1700 8200 1700
Connection ~ 7300 1700
Wire Wire Line
	7050 1700 7300 1700
Wire Wire Line
	10000 1650 10000 1700
Wire Wire Line
	9100 1650 9100 1700
Wire Wire Line
	8200 1650 8200 1700
Wire Wire Line
	7300 1650 7300 1700
Connection ~ 9800 1400
Wire Wire Line
	9800 1400 9800 2000
Connection ~ 8900 1400
Wire Wire Line
	8900 1400 8900 2000
Connection ~ 8000 1400
Wire Wire Line
	8000 1400 8000 2000
Connection ~ 9800 2000
Wire Wire Line
	9800 2000 9800 2600
Connection ~ 8900 2000
Wire Wire Line
	8900 2000 8900 2600
Connection ~ 8000 2000
Wire Wire Line
	8000 2000 8000 2600
Connection ~ 9800 2600
Connection ~ 8900 2600
Connection ~ 8000 2600
Wire Wire Line
	9800 2600 9800 3200
Wire Wire Line
	8900 2600 8900 3200
Wire Wire Line
	8000 2600 8000 3200
Wire Wire Line
	10000 3200 10000 3250
Wire Wire Line
	9100 3200 9100 3250
Wire Wire Line
	8200 3200 8200 3250
Wire Wire Line
	7300 3200 7300 3250
Text Label 7050 3500 2    50   ~ 0
row4
Wire Wire Line
	9100 3500 10000 3500
Connection ~ 9100 3500
Wire Wire Line
	8200 3500 9100 3500
Connection ~ 8200 3500
Wire Wire Line
	7300 3500 8200 3500
Connection ~ 7300 3500
Wire Wire Line
	7050 3500 7300 3500
Wire Wire Line
	10000 3450 10000 3500
Wire Wire Line
	9100 3450 9100 3500
Wire Wire Line
	8200 3450 8200 3500
Wire Wire Line
	7300 3450 7300 3500
$Comp
L keyboard:D D26
U 1 1 5CD096C8
P 10000 2800
F 0 "D26" H 9872 2750 60  0000 R CNN
F 1 "D" V 10150 2750 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 10000 2800 60  0001 C CNN
F 3 "" H 10000 2800 60  0000 C CNN
	1    10000 2800
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D27
U 1 1 5CD096CE
P 10000 3400
F 0 "D27" H 9872 3350 60  0000 R CNN
F 1 "D" V 10150 3350 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 10000 3400 60  0001 C CNN
F 3 "" H 10000 3400 60  0000 C CNN
	1    10000 3400
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D20
U 1 1 5CCF78DF
P 9100 3400
F 0 "D20" H 8972 3350 60  0000 R CNN
F 1 "D" V 9250 3350 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 9100 3400 60  0001 C CNN
F 3 "" H 9100 3400 60  0000 C CNN
	1    9100 3400
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D19
U 1 1 5CCF78D9
P 9100 2800
F 0 "D19" H 8972 2750 60  0000 R CNN
F 1 "D" V 9250 2750 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 9100 2800 60  0001 C CNN
F 3 "" H 9100 2800 60  0000 C CNN
	1    9100 2800
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D13
U 1 1 5CCE5DBE
P 8200 2800
F 0 "D13" H 8072 2750 60  0000 R CNN
F 1 "D" V 8350 2750 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 8200 2800 60  0001 C CNN
F 3 "" H 8200 2800 60  0000 C CNN
	1    8200 2800
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D14
U 1 1 5CCE5DC4
P 8200 3400
F 0 "D14" H 8072 3350 60  0000 R CNN
F 1 "D" V 8350 3350 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 8200 3400 60  0001 C CNN
F 3 "" H 8200 3400 60  0000 C CNN
	1    8200 3400
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D8
U 1 1 5CC7063C
P 7300 3400
F 0 "D8" H 7172 3350 60  0000 R CNN
F 1 "D" V 7450 3350 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 7300 3400 60  0001 C CNN
F 3 "" H 7300 3400 60  0000 C CNN
	1    7300 3400
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D7
U 1 1 5CC6FFBD
P 7300 2800
F 0 "D7" H 7172 2750 60  0000 R CNN
F 1 "D" V 7450 2750 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 7300 2800 60  0001 C CNN
F 3 "" H 7300 2800 60  0000 C CNN
	1    7300 2800
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D6
U 1 1 5CC6F8BB
P 7300 2200
F 0 "D6" H 7172 2150 60  0000 R CNN
F 1 "D" V 7450 2150 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 7300 2200 60  0001 C CNN
F 3 "" H 7300 2200 60  0000 C CNN
	1    7300 2200
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D12
U 1 1 5CCE5DD0
P 8200 2200
F 0 "D12" H 8072 2150 60  0000 R CNN
F 1 "D" V 8350 2150 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 8200 2200 60  0001 C CNN
F 3 "" H 8200 2200 60  0000 C CNN
	1    8200 2200
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D18
U 1 1 5CCF78EB
P 9100 2200
F 0 "D18" H 8972 2150 60  0000 R CNN
F 1 "D" V 9250 2150 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 9100 2200 60  0001 C CNN
F 3 "" H 9100 2200 60  0000 C CNN
	1    9100 2200
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D25
U 1 1 5CD096DA
P 10000 2200
F 0 "D25" H 9872 2150 60  0000 R CNN
F 1 "D" V 10150 2150 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 10000 2200 60  0001 C CNN
F 3 "" H 10000 2200 60  0000 C CNN
	1    10000 2200
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D24
U 1 1 5CD096C2
P 10000 1600
F 0 "D24" H 9872 1550 60  0000 R CNN
F 1 "D" V 10150 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 10000 1600 60  0001 C CNN
F 3 "" H 10000 1600 60  0000 C CNN
	1    10000 1600
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D17
U 1 1 5CCF78D3
P 9100 1600
F 0 "D17" H 8972 1550 60  0000 R CNN
F 1 "D" V 9250 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 9100 1600 60  0001 C CNN
F 3 "" H 9100 1600 60  0000 C CNN
	1    9100 1600
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D11
U 1 1 5CCE5DB8
P 8200 1600
F 0 "D11" H 8072 1550 60  0000 R CNN
F 1 "D" V 8350 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 8200 1600 60  0001 C CNN
F 3 "" H 8200 1600 60  0000 C CNN
	1    8200 1600
	-1   0    0    1   
$EndComp
$Comp
L keyboard:D D5
U 1 1 5CC6EC14
P 7300 1600
F 0 "D5" H 7172 1550 60  0000 R CNN
F 1 "D" V 7450 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-323" H 7300 1600 60  0001 C CNN
F 3 "" H 7300 1600 60  0000 C CNN
	1    7300 1600
	-1   0    0    1   
$EndComp
Text Label 6200 3550 2    50   ~ 0
USER_LED
Text Label 6200 4000 2    50   ~ 0
ENC_1_B
Text Label 6200 4100 2    50   ~ 0
ENC_1_A
Text Label 6200 4200 2    50   ~ 0
ENC_1_SW
Text Label 6200 2000 2    50   ~ 0
ENC_2_A
Text Label 6200 2100 2    50   ~ 0
ENC_2_B
Text Label 6200 3400 2    50   ~ 0
ENC_2_SW
Wire Wire Line
	8850 5100 9000 5100
NoConn ~ 9575 5250
$Comp
L Mechanical:MountingHole H1
U 1 1 5D0FF496
P 6525 7075
F 0 "H1" H 6625 7121 50  0000 L CNN
F 1 "MH-M3" H 6625 7030 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 6525 7075 50  0001 C CNN
F 3 "~" H 6525 7075 50  0001 C CNN
	1    6525 7075
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5D100356
P 6525 7275
F 0 "H2" H 6625 7321 50  0000 L CNN
F 1 "MH-M3" H 6625 7230 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 6525 7275 50  0001 C CNN
F 3 "~" H 6525 7275 50  0001 C CNN
	1    6525 7275
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5D1006A4
P 6525 7450
F 0 "H3" H 6625 7496 50  0000 L CNN
F 1 "MH-M3" H 6625 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 6525 7450 50  0001 C CNN
F 3 "~" H 6525 7450 50  0001 C CNN
	1    6525 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5D1008E1
P 6525 7625
F 0 "H4" H 6625 7671 50  0000 L CNN
F 1 "MH-M3" H 6625 7580 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580" H 6525 7625 50  0001 C CNN
F 3 "~" H 6525 7625 50  0001 C CNN
	1    6525 7625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2400 1600 2400
Wire Wire Line
	1600 2400 1600 2550
Wire Wire Line
	1600 2550 1650 2550
Wire Wire Line
	1550 2500 1550 2350
Wire Wire Line
	1550 2350 1650 2350
Wire Wire Line
	2650 2550 2775 2550
Wire Wire Line
	2775 2550 2775 2350
Wire Wire Line
	2775 2350 3050 2350
Wire Wire Line
	2650 2350 2725 2350
Wire Wire Line
	2725 2350 2725 2500
Wire Wire Line
	2725 2500 2925 2500
Wire Wire Line
	2925 2500 2925 2550
Wire Wire Line
	2925 2550 3050 2550
$Comp
L Hub16-rescue:Crystal_GND24_Small-Device Y1
U 1 1 5D3B2BCA
P 3300 3050
F 0 "Y1" V 3200 3075 50  0000 L CNN
F 1 "16MHz" V 3400 3050 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 3300 3050 50  0001 C CNN
F 3 "~" H 3300 3050 50  0001 C CNN
	1    3300 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2850 3300 2950
Wire Wire Line
	3300 3150 3300 3250
Wire Wire Line
	3175 3050 2650 3050
Connection ~ 2650 3050
Wire Wire Line
	2650 3050 2650 3250
Wire Wire Line
	3425 3050 3475 3050
$Comp
L power:GND #PWR023
U 1 1 5D4386B6
P 3475 3050
F 0 "#PWR023" H 3475 2800 50  0001 C CNN
F 1 "GND" H 3480 2877 50  0000 C CNN
F 2 "" H 3475 3050 50  0001 C CNN
F 3 "" H 3475 3050 50  0001 C CNN
	1    3475 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3550 5800 3550
Wire Wire Line
	6200 2800 5800 2800
Wire Wire Line
	6200 3800 5800 3800
Wire Wire Line
	6200 3900 5800 3900
Wire Wire Line
	6200 3700 5800 3700
Wire Wire Line
	6200 2550 5800 2550
Wire Wire Line
	6200 2450 5800 2450
Wire Wire Line
	6200 2200 5800 2200
Wire Wire Line
	5800 3200 6200 3200
Wire Wire Line
	5800 3000 6200 3000
Wire Wire Line
	6200 4200 5800 4200
Wire Wire Line
	5800 4100 6200 4100
Wire Wire Line
	5800 4000 6200 4000
Wire Wire Line
	6200 3400 5800 3400
Wire Wire Line
	6200 2100 5800 2100
Wire Wire Line
	5800 2000 6200 2000
NoConn ~ 5800 1600
NoConn ~ 5800 2300
NoConn ~ 5800 2700
NoConn ~ 5800 2900
NoConn ~ 5800 3100
NoConn ~ 5800 3300
Text Label 6525 1075 1    50   ~ 0
USER_LED
$Comp
L Device:LED D9
U 1 1 5CF218FF
P 6525 1625
F 0 "D9" V 6564 1508 50  0000 R CNN
F 1 "LED" V 6473 1508 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6525 1625 50  0001 C CNN
F 3 "~" H 6525 1625 50  0001 C CNN
	1    6525 1625
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5CF218F9
P 6525 1275
F 0 "R12" H 6595 1321 50  0000 L CNN
F 1 "1K" H 6595 1230 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6455 1275 50  0001 C CNN
F 3 "~" H 6525 1275 50  0001 C CNN
	1    6525 1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 1425 6525 1475
Wire Wire Line
	6525 1775 6525 1825
Wire Wire Line
	6525 1125 6525 1075
$Comp
L power:GND #PWR0112
U 1 1 5CF218F0
P 6525 1825
F 0 "#PWR0112" H 6525 1575 50  0001 C CNN
F 1 "GND" H 6530 1652 50  0000 C CNN
F 2 "" H 6525 1825 50  0001 C CNN
F 3 "" H 6525 1825 50  0001 C CNN
	1    6525 1825
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5CCFEB75
P 6500 3075
F 0 "D1" V 6539 2958 50  0000 R CNN
F 1 "LED" V 6448 2958 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6500 3075 50  0001 C CNN
F 3 "~" H 6500 3075 50  0001 C CNN
	1    6500 3075
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5CCFF54D
P 6500 2725
F 0 "R1" H 6570 2771 50  0000 L CNN
F 1 "1K" H 6570 2680 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 2725 50  0001 C CNN
F 3 "~" H 6500 2725 50  0001 C CNN
	1    6500 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2875 6500 2925
Wire Wire Line
	6500 3225 6500 3275
Wire Wire Line
	6500 2575 6500 2525
$Comp
L power:GND #PWR05
U 1 1 5CD05EEA
P 6500 3275
F 0 "#PWR05" H 6500 3025 50  0001 C CNN
F 1 "GND" H 6505 3102 50  0000 C CNN
F 2 "" H 6500 3275 50  0001 C CNN
F 3 "" H 6500 3275 50  0001 C CNN
	1    6500 3275
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5CD062ED
P 6500 2525
F 0 "#PWR04" H 6500 2375 50  0001 C CNN
F 1 "+5V" H 6515 2698 50  0000 C CNN
F 2 "" H 6500 2525 50  0001 C CNN
F 3 "" H 6500 2525 50  0001 C CNN
	1    6500 2525
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D1E3EC3
P 4375 6875
F 0 "R15" V 4300 6825 50  0000 L CNN
F 1 "10K" V 4375 6800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4305 6875 50  0001 C CNN
F 3 "~" H 4375 6875 50  0001 C CNN
	1    4375 6875
	0    1    1    0   
$EndComp
Wire Wire Line
	4525 6875 4575 6875
Connection ~ 4575 6875
Wire Wire Line
	4225 6875 4175 6875
$Comp
L Device:R R16
U 1 1 5D256D76
P 4375 7075
F 0 "R16" V 4300 7025 50  0000 L CNN
F 1 "10K" V 4375 7000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4305 7075 50  0001 C CNN
F 3 "~" H 4375 7075 50  0001 C CNN
	1    4375 7075
	0    1    1    0   
$EndComp
Wire Wire Line
	4225 7075 3875 7075
Wire Wire Line
	4875 6775 4875 7075
Connection ~ 4875 7075
Wire Wire Line
	4875 7075 5175 7075
$Comp
L Device:C C11
U 1 1 5D317FA7
P 4175 7250
F 0 "C11" H 4290 7296 50  0000 L CNN
F 1 "100n" H 4290 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4213 7100 50  0001 C CNN
F 3 "~" H 4175 7250 50  0001 C CNN
	1    4175 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5D3192C8
P 3875 7250
F 0 "C10" H 3550 7300 50  0000 L CNN
F 1 "100n" H 3550 7225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3913 7100 50  0001 C CNN
F 3 "~" H 3875 7250 50  0001 C CNN
	1    3875 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 7100 4175 6875
Wire Wire Line
	3875 7100 3875 7075
Wire Wire Line
	3875 7400 3875 7425
Wire Wire Line
	4175 7425 4175 7400
$Comp
L power:GND #PWR037
U 1 1 5D45A69B
P 4175 7425
F 0 "#PWR037" H 4175 7175 50  0001 C CNN
F 1 "GND" H 4180 7252 50  0000 C CNN
F 2 "" H 4175 7425 50  0001 C CNN
F 3 "" H 4175 7425 50  0001 C CNN
	1    4175 7425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5D45AD36
P 3875 7425
F 0 "#PWR036" H 3875 7175 50  0001 C CNN
F 1 "GND" H 3880 7252 50  0000 C CNN
F 2 "" H 3875 7425 50  0001 C CNN
F 3 "" H 3875 7425 50  0001 C CNN
	1    3875 7425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D4D61D9
P 1400 6900
F 0 "R13" V 1325 6850 50  0000 L CNN
F 1 "10K" V 1400 6825 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 6900 50  0001 C CNN
F 3 "~" H 1400 6900 50  0001 C CNN
	1    1400 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5D4D61DF
P 1400 7100
F 0 "R14" V 1325 7050 50  0000 L CNN
F 1 "10K" V 1400 7025 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 7100 50  0001 C CNN
F 3 "~" H 1400 7100 50  0001 C CNN
	1    1400 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	550  6900 1200 6900
Wire Wire Line
	550  7100 900  7100
$Comp
L Device:C C9
U 1 1 5D54F9A1
P 1200 7275
F 0 "C9" H 1315 7321 50  0000 L CNN
F 1 "100n" H 1315 7230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1238 7125 50  0001 C CNN
F 3 "~" H 1200 7275 50  0001 C CNN
	1    1200 7275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D54F9A7
P 900 7275
F 0 "C8" H 575 7325 50  0000 L CNN
F 1 "100n" H 575 7250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 938 7125 50  0001 C CNN
F 3 "~" H 900 7275 50  0001 C CNN
	1    900  7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7125 1200 6900
Wire Wire Line
	900  7125 900  7100
Wire Wire Line
	900  7425 900  7450
Wire Wire Line
	1200 7450 1200 7425
$Comp
L power:GND #PWR035
U 1 1 5D54F9B1
P 1200 7450
F 0 "#PWR035" H 1200 7200 50  0001 C CNN
F 1 "GND" H 1205 7277 50  0000 C CNN
F 2 "" H 1200 7450 50  0001 C CNN
F 3 "" H 1200 7450 50  0001 C CNN
	1    1200 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5D54F9B7
P 900 7450
F 0 "#PWR034" H 900 7200 50  0001 C CNN
F 1 "GND" H 905 7277 50  0000 C CNN
F 2 "" H 900 7450 50  0001 C CNN
F 3 "" H 900 7450 50  0001 C CNN
	1    900  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6900 1600 6900
Connection ~ 1600 6900
Connection ~ 1900 7100
Wire Wire Line
	1600 6900 2200 6900
Wire Wire Line
	1550 7100 1900 7100
Connection ~ 900  7100
Wire Wire Line
	900  7100 1250 7100
Connection ~ 1200 6900
Wire Wire Line
	1200 6900 1250 6900
Wire Wire Line
	4575 6875 5175 6875
Wire Wire Line
	4525 7075 4875 7075
Connection ~ 3875 7075
Wire Wire Line
	3875 7075 3525 7075
Connection ~ 4175 6875
Wire Wire Line
	4175 6875 3525 6875
$EndSCHEMATC
