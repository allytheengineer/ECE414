EESchema Schematic File Version 4
EELAYER 30 0
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
L PIC32MX250F128B-V_SP:PIC32MX250F128B-V_SP U?
U 1 1 6137C418
P 6550 1850
F 0 "U?" H 6000 3117 50  0000 C CNN
F 1 "PIC32MX250F128B-V_SP" H 6000 3026 50  0000 C CNN
F 2 "DIP254P762X508-28" H 6550 1850 50  0001 L BNN
F 3 "SPDIP-28 Microchip" H 6550 1850 50  0001 L BNN
F 4 "PIC32MX250F128B-V/SP" H 6550 1850 50  0001 L BNN "Field4"
F 5 "32 Bit MCU, 128KB Flash, 32KB RAM, 40 MHz, 28 Pin, 3 Comp, CTMU, RTCC, 28 SPDIP" H 6550 1850 50  0001 L BNN "Field5"
F 6 "Microchip" H 6550 1850 50  0001 L BNN "Field6"
F 7 "None" H 6550 1850 50  0001 L BNN "Field7"
F 8 "Unavailable" H 6550 1850 50  0001 L BNN "Field8"
	1    6550 1850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x05 SW?
U 1 1 6137ECA5
P 1950 1750
F 0 "SW?" H 1950 2217 50  0000 C CNN
F 1 "SW_DIP_x05" H 1950 2126 50  0000 C CNN
F 2 "" H 1950 1750 50  0001 C CNN
F 3 "~" H 1950 1750 50  0001 C CNN
	1    1950 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1550 4750 1550
Wire Wire Line
	2250 1650 4750 1650
Wire Wire Line
	4750 2550 2350 2550
Wire Wire Line
	2350 2550 2350 1950
Wire Wire Line
	2350 1950 2250 1950
Wire Wire Line
	1650 1550 1450 1550
$Comp
L power:GND #PWR?
U 1 1 61383FF1
P 1450 2450
F 0 "#PWR?" H 1450 2200 50  0001 C CNN
F 1 "GND" H 1455 2277 50  0000 C CNN
F 2 "" H 1450 2450 50  0001 C CNN
F 3 "" H 1450 2450 50  0001 C CNN
	1    1450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1550 1450 1650
Wire Wire Line
	1650 1650 1450 1650
Connection ~ 1450 1650
Wire Wire Line
	1450 1650 1450 1750
Wire Wire Line
	1650 1750 1450 1750
Connection ~ 1450 1750
Wire Wire Line
	1450 1750 1450 1850
Wire Wire Line
	1650 1850 1450 1850
Connection ~ 1450 1850
Wire Wire Line
	1450 1850 1450 1950
Wire Wire Line
	1650 1950 1450 1950
Wire Wire Line
	1450 1950 1450 2450
$Comp
L Device:LED D0
U 1 1 613854F6
P 3850 4850
F 0 "D0" V 3889 4732 50  0000 R CNN
F 1 "LED" V 3798 4732 50  0000 R CNN
F 2 "" H 3850 4850 50  0001 C CNN
F 3 "~" H 3850 4850 50  0001 C CNN
	1    3850 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 61386055
P 4250 4850
F 0 "D1" V 4289 4732 50  0000 R CNN
F 1 "LED" V 4198 4732 50  0000 R CNN
F 2 "" H 4250 4850 50  0001 C CNN
F 3 "~" H 4250 4850 50  0001 C CNN
	1    4250 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 61386B6C
P 4650 4850
F 0 "D2" V 4689 4732 50  0000 R CNN
F 1 "LED" V 4598 4732 50  0000 R CNN
F 2 "" H 4650 4850 50  0001 C CNN
F 3 "~" H 4650 4850 50  0001 C CNN
	1    4650 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 6138741E
P 5050 4850
F 0 "D3" V 5089 4732 50  0000 R CNN
F 1 "LED" V 4998 4732 50  0000 R CNN
F 2 "" H 5050 4850 50  0001 C CNN
F 3 "~" H 5050 4850 50  0001 C CNN
	1    5050 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 6138834A
P 5450 4850
F 0 "D4" V 5489 4732 50  0000 R CNN
F 1 "LED" V 5398 4732 50  0000 R CNN
F 2 "" H 5450 4850 50  0001 C CNN
F 3 "~" H 5450 4850 50  0001 C CNN
	1    5450 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 61389AEC
P 5850 4850
F 0 "D5" V 5889 4732 50  0000 R CNN
F 1 "LED" V 5798 4732 50  0000 R CNN
F 2 "" H 5850 4850 50  0001 C CNN
F 3 "~" H 5850 4850 50  0001 C CNN
	1    5850 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 61389AF2
P 6250 4850
F 0 "D6" V 6289 4732 50  0000 R CNN
F 1 "LED" V 6198 4732 50  0000 R CNN
F 2 "" H 6250 4850 50  0001 C CNN
F 3 "~" H 6250 4850 50  0001 C CNN
	1    6250 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 61389AF8
P 6650 4850
F 0 "D7" V 6689 4732 50  0000 R CNN
F 1 "LED" V 6598 4732 50  0000 R CNN
F 2 "" H 6650 4850 50  0001 C CNN
F 3 "~" H 6650 4850 50  0001 C CNN
	1    6650 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 61389AFE
P 7050 4850
F 0 "D8" V 7089 4732 50  0000 R CNN
F 1 "LED" V 6998 4732 50  0000 R CNN
F 2 "" H 7050 4850 50  0001 C CNN
F 3 "~" H 7050 4850 50  0001 C CNN
	1    7050 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D9
U 1 1 61389B04
P 7450 4850
F 0 "D9" V 7489 4732 50  0000 R CNN
F 1 "LED" V 7398 4732 50  0000 R CNN
F 2 "" H 7450 4850 50  0001 C CNN
F 3 "~" H 7450 4850 50  0001 C CNN
	1    7450 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D10
U 1 1 6138A9BA
P 7850 4850
F 0 "D10" V 7889 4732 50  0000 R CNN
F 1 "LED" V 7798 4732 50  0000 R CNN
F 2 "" H 7850 4850 50  0001 C CNN
F 3 "~" H 7850 4850 50  0001 C CNN
	1    7850 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D11
U 1 1 6138A9C0
P 8250 4850
F 0 "D11" V 8289 4732 50  0000 R CNN
F 1 "LED" V 8198 4732 50  0000 R CNN
F 2 "" H 8250 4850 50  0001 C CNN
F 3 "~" H 8250 4850 50  0001 C CNN
	1    8250 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D12
U 1 1 6138A9C6
P 8650 4850
F 0 "D12" V 8689 4732 50  0000 R CNN
F 1 "LED" V 8598 4732 50  0000 R CNN
F 2 "" H 8650 4850 50  0001 C CNN
F 3 "~" H 8650 4850 50  0001 C CNN
	1    8650 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D13
U 1 1 6138A9CC
P 9050 4850
F 0 "D13" V 9089 4732 50  0000 R CNN
F 1 "LED" V 8998 4732 50  0000 R CNN
F 2 "" H 9050 4850 50  0001 C CNN
F 3 "~" H 9050 4850 50  0001 C CNN
	1    9050 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R0
U 1 1 6138BBAC
P 3850 5350
F 0 "R0" H 3920 5396 50  0000 L CNN
F 1 "360" H 3920 5305 50  0000 L CNN
F 2 "" V 3780 5350 50  0001 C CNN
F 3 "~" H 3850 5350 50  0001 C CNN
	1    3850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6138C1FB
P 4250 5350
F 0 "R1" H 4320 5396 50  0000 L CNN
F 1 "360" H 4320 5305 50  0000 L CNN
F 2 "" V 4180 5350 50  0001 C CNN
F 3 "~" H 4250 5350 50  0001 C CNN
	1    4250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6138C886
P 4650 5350
F 0 "R2" H 4720 5396 50  0000 L CNN
F 1 "360" H 4720 5305 50  0000 L CNN
F 2 "" V 4580 5350 50  0001 C CNN
F 3 "~" H 4650 5350 50  0001 C CNN
	1    4650 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6138CF4A
P 5050 5350
F 0 "R3" H 5120 5396 50  0000 L CNN
F 1 "360" H 5120 5305 50  0000 L CNN
F 2 "" V 4980 5350 50  0001 C CNN
F 3 "~" H 5050 5350 50  0001 C CNN
	1    5050 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6138D3C6
P 5450 5350
F 0 "R4" H 5520 5396 50  0000 L CNN
F 1 "360" H 5520 5305 50  0000 L CNN
F 2 "" V 5380 5350 50  0001 C CNN
F 3 "~" H 5450 5350 50  0001 C CNN
	1    5450 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6138D8DD
P 5850 5350
F 0 "R5" H 5920 5396 50  0000 L CNN
F 1 "360" H 5920 5305 50  0000 L CNN
F 2 "" V 5780 5350 50  0001 C CNN
F 3 "~" H 5850 5350 50  0001 C CNN
	1    5850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6138DE5E
P 6250 5350
F 0 "R6" H 6320 5396 50  0000 L CNN
F 1 "360" H 6320 5305 50  0000 L CNN
F 2 "" V 6180 5350 50  0001 C CNN
F 3 "~" H 6250 5350 50  0001 C CNN
	1    6250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6138E36B
P 6650 5350
F 0 "R7" H 6720 5396 50  0000 L CNN
F 1 "360" H 6720 5305 50  0000 L CNN
F 2 "" V 6580 5350 50  0001 C CNN
F 3 "~" H 6650 5350 50  0001 C CNN
	1    6650 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61391DC4
P 7050 5350
F 0 "R8" H 7120 5396 50  0000 L CNN
F 1 "360" H 7120 5305 50  0000 L CNN
F 2 "" V 6980 5350 50  0001 C CNN
F 3 "~" H 7050 5350 50  0001 C CNN
	1    7050 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61391DCA
P 7450 5350
F 0 "R9" H 7520 5396 50  0000 L CNN
F 1 "360" H 7520 5305 50  0000 L CNN
F 2 "" V 7380 5350 50  0001 C CNN
F 3 "~" H 7450 5350 50  0001 C CNN
	1    7450 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61391DD0
P 7850 5350
F 0 "R10" H 7920 5396 50  0000 L CNN
F 1 "360" H 7920 5305 50  0000 L CNN
F 2 "" V 7780 5350 50  0001 C CNN
F 3 "~" H 7850 5350 50  0001 C CNN
	1    7850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 61391DD6
P 8250 5350
F 0 "R11" H 8320 5396 50  0000 L CNN
F 1 "360" H 8320 5305 50  0000 L CNN
F 2 "" V 8180 5350 50  0001 C CNN
F 3 "~" H 8250 5350 50  0001 C CNN
	1    8250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61391DDC
P 8650 5350
F 0 "R12" H 8720 5396 50  0000 L CNN
F 1 "360" H 8720 5305 50  0000 L CNN
F 2 "" V 8580 5350 50  0001 C CNN
F 3 "~" H 8650 5350 50  0001 C CNN
	1    8650 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61391DE2
P 9050 5350
F 0 "R13" H 9120 5396 50  0000 L CNN
F 1 "360" H 9120 5305 50  0000 L CNN
F 2 "" V 8980 5350 50  0001 C CNN
F 3 "~" H 9050 5350 50  0001 C CNN
	1    9050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5000 9050 5200
Wire Wire Line
	8650 5000 8650 5200
Wire Wire Line
	8250 5000 8250 5200
Wire Wire Line
	7850 5000 7850 5200
Wire Wire Line
	7450 5000 7450 5200
Wire Wire Line
	7050 5000 7050 5200
Wire Wire Line
	6650 5000 6650 5200
Wire Wire Line
	6250 5000 6250 5200
Wire Wire Line
	5850 5000 5850 5200
Wire Wire Line
	5450 5000 5450 5200
Wire Wire Line
	5050 5000 5050 5200
Wire Wire Line
	4650 5000 4650 5200
Wire Wire Line
	4250 5000 4250 5200
Wire Wire Line
	3850 5000 3850 5200
Wire Wire Line
	2250 1850 2500 1850
Wire Wire Line
	2500 1850 2500 2350
Wire Wire Line
	2500 2350 4750 2350
Wire Wire Line
	2250 1750 2600 1750
Wire Wire Line
	2600 1750 2600 2250
Wire Wire Line
	2600 2250 4750 2250
Wire Wire Line
	4750 1750 3850 1750
Wire Wire Line
	3850 1750 3850 4700
Wire Wire Line
	4250 4700 4250 1850
Wire Wire Line
	4250 1850 4750 1850
Wire Wire Line
	4750 2050 4450 2050
Wire Wire Line
	4450 2050 4450 4400
Wire Wire Line
	4450 4400 5050 4400
Wire Wire Line
	5050 4400 5050 4700
Wire Wire Line
	4350 1950 4350 4500
Wire Wire Line
	4350 4500 4650 4500
Wire Wire Line
	4650 4500 4650 4700
Wire Wire Line
	4350 1950 4750 1950
Wire Wire Line
	4750 2450 4550 2450
Wire Wire Line
	4550 2450 4550 4300
Wire Wire Line
	4550 4300 5450 4300
Wire Wire Line
	5450 4300 5450 4700
Wire Wire Line
	4750 2650 4650 2650
Wire Wire Line
	4650 2650 4650 4200
Wire Wire Line
	4650 4200 5850 4200
Wire Wire Line
	5850 4200 5850 4700
Wire Wire Line
	3850 5500 3850 5800
Wire Wire Line
	9050 5800 9050 5500
Wire Wire Line
	8650 5500 8650 5800
Connection ~ 8650 5800
Wire Wire Line
	8650 5800 9050 5800
Wire Wire Line
	8250 5500 8250 5800
Connection ~ 8250 5800
Wire Wire Line
	8250 5800 8650 5800
Wire Wire Line
	7850 5500 7850 5800
Connection ~ 7850 5800
Wire Wire Line
	7850 5800 8250 5800
Wire Wire Line
	7450 5500 7450 5800
Connection ~ 7450 5800
Wire Wire Line
	7450 5800 7850 5800
Wire Wire Line
	7050 5500 7050 5800
Connection ~ 7050 5800
Wire Wire Line
	7050 5800 7450 5800
Wire Wire Line
	6650 5500 6650 5800
Connection ~ 6650 5800
Wire Wire Line
	6650 5800 7050 5800
Wire Wire Line
	6250 5500 6250 5800
Wire Wire Line
	3850 5800 4250 5800
Connection ~ 6250 5800
Wire Wire Line
	6250 5800 6450 5800
Wire Wire Line
	5850 5500 5850 5800
Connection ~ 5850 5800
Wire Wire Line
	5850 5800 6250 5800
Wire Wire Line
	5450 5500 5450 5800
Connection ~ 5450 5800
Wire Wire Line
	5450 5800 5850 5800
Wire Wire Line
	5050 5500 5050 5800
Connection ~ 5050 5800
Wire Wire Line
	5050 5800 5450 5800
Wire Wire Line
	4650 5500 4650 5800
Connection ~ 4650 5800
Wire Wire Line
	4650 5800 5050 5800
Wire Wire Line
	4250 5500 4250 5800
Connection ~ 4250 5800
Wire Wire Line
	4250 5800 4650 5800
Connection ~ 1450 1950
$Comp
L power:GND #PWR?
U 1 1 613C2B0B
P 6450 6300
F 0 "#PWR?" H 6450 6050 50  0001 C CNN
F 1 "GND" H 6455 6127 50  0000 C CNN
F 2 "" H 6450 6300 50  0001 C CNN
F 3 "" H 6450 6300 50  0001 C CNN
	1    6450 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5800 6450 6300
Wire Wire Line
	7250 2150 7400 2150
Wire Wire Line
	7400 2150 7400 4100
Wire Wire Line
	7400 4100 6250 4100
Wire Wire Line
	6250 4100 6250 4700
Wire Wire Line
	6650 4700 6650 4200
Wire Wire Line
	6650 4200 7500 4200
Wire Wire Line
	7500 4200 7500 2050
Wire Wire Line
	7500 2050 7250 2050
Wire Wire Line
	7050 4700 7050 4300
Wire Wire Line
	7050 4300 7600 4300
Wire Wire Line
	7600 4300 7600 1950
Wire Wire Line
	7600 1950 7250 1950
Wire Wire Line
	7450 4700 7450 4400
Wire Wire Line
	7450 4400 7700 4400
Wire Wire Line
	7700 4400 7700 1750
Wire Wire Line
	7700 1750 7250 1750
Wire Wire Line
	7850 4700 7850 1650
Wire Wire Line
	7850 1650 7250 1650
Wire Wire Line
	8250 4700 8250 1450
Wire Wire Line
	8250 1450 7250 1450
Wire Wire Line
	8650 1350 7250 1350
Wire Wire Line
	8650 1350 8650 4700
Wire Wire Line
	9050 4700 9050 1250
Wire Wire Line
	9050 1250 7250 1250
Connection ~ 6450 5800
Wire Wire Line
	6450 5800 6650 5800
$EndSCHEMATC
