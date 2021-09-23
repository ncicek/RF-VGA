EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Regulator_Linear:LM1117-3.3 U2
U 1 1 6132C886
P 1750 1050
F 0 "U2" H 1750 1292 50  0000 C CNN
F 1 "LM1117-3.3" H 1750 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1750 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 1750 1050 50  0001 C CNN
	1    1750 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 6132E3E2
P 2250 1200
F 0 "C19" H 2365 1246 50  0000 L CNN
F 1 "1u" H 2365 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2288 1050 50  0001 C CNN
F 3 "~" H 2250 1200 50  0001 C CNN
	1    2250 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 6132F074
P 1250 1200
F 0 "C17" H 1365 1246 50  0000 L CNN
F 1 "1u" H 1365 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1288 1050 50  0001 C CNN
F 3 "~" H 1250 1200 50  0001 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6132F53A
P 1750 1450
F 0 "#PWR022" H 1750 1200 50  0001 C CNN
F 1 "GND" H 1755 1277 50  0000 C CNN
F 2 "" H 1750 1450 50  0001 C CNN
F 3 "" H 1750 1450 50  0001 C CNN
	1    1750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1350 1750 1350
Connection ~ 1750 1350
Wire Wire Line
	1750 1350 2250 1350
Wire Wire Line
	1750 1450 1750 1350
$Comp
L power:+3.3V #PWR025
U 1 1 6132FE31
P 2250 950
F 0 "#PWR025" H 2250 800 50  0001 C CNN
F 1 "+3.3V" H 2265 1123 50  0000 C CNN
F 2 "" H 2250 950 50  0001 C CNN
F 3 "" H 2250 950 50  0001 C CNN
	1    2250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1050 2250 1050
Wire Wire Line
	2250 1050 2250 950 
Connection ~ 2250 1050
Wire Wire Line
	1250 1050 1450 1050
$Comp
L power:+5V #PWR021
U 1 1 61330D0F
P 1000 950
F 0 "#PWR021" H 1000 800 50  0001 C CNN
F 1 "+5V" H 1015 1123 50  0000 C CNN
F 2 "" H 1000 950 50  0001 C CNN
F 3 "" H 1000 950 50  0001 C CNN
	1    1000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1050 1000 1050
Wire Wire Line
	1000 1050 1000 950 
Connection ~ 1250 1050
$Comp
L power:+3.3V #PWR031
U 1 1 61331589
P 6000 1850
F 0 "#PWR031" H 6000 1700 50  0001 C CNN
F 1 "+3.3V" H 6015 2023 50  0000 C CNN
F 2 "" H 6000 1850 50  0001 C CNN
F 3 "" H 6000 1850 50  0001 C CNN
	1    6000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 613328CC
P 4700 1500
F 0 "C23" H 4815 1546 50  0000 L CNN
F 1 "0.1u" H 4815 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4738 1350 50  0001 C CNN
F 3 "~" H 4700 1500 50  0001 C CNN
	1    4700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR027
U 1 1 61333211
P 4700 1350
F 0 "#PWR027" H 4700 1200 50  0001 C CNN
F 1 "+3.3V" H 4715 1523 50  0000 C CNN
F 2 "" H 4700 1350 50  0001 C CNN
F 3 "" H 4700 1350 50  0001 C CNN
	1    4700 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 61333760
P 4700 1650
F 0 "#PWR028" H 4700 1400 50  0001 C CNN
F 1 "GND" H 4705 1477 50  0000 C CNN
F 2 "" H 4700 1650 50  0001 C CNN
F 3 "" H 4700 1650 50  0001 C CNN
	1    4700 1650
	1    0    0    -1  
$EndComp
$Comp
L STM32L010C6:﻿STM32L010C6 U3
U 1 1 61327A0E
P 4600 3050
F 0 "U3" H 5650 353 60  0000 C CNN
F 1 "﻿STM32L010C6" H 5650 247 60  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4750 3100 60  0001 R CNN
F 3 "" H 4750 2900 60  0001 R CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1950 5900 1850
Wire Wire Line
	5900 1850 6000 1850
Wire Wire Line
	6000 1950 6000 1850
Connection ~ 6000 1850
$Comp
L Device:C C22
U 1 1 6132D236
P 4450 1500
F 0 "C22" H 4565 1546 50  0000 L CNN
F 1 "0.1u" H 4565 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4488 1350 50  0001 C CNN
F 3 "~" H 4450 1500 50  0001 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1350 4700 1350
Connection ~ 4700 1350
Wire Wire Line
	4450 1650 4700 1650
Connection ~ 4700 1650
Wire Wire Line
	5600 5650 5700 5650
Wire Wire Line
	5700 5650 5950 5650
Wire Wire Line
	5950 5650 5950 5700
Connection ~ 5700 5650
$Comp
L power:GND #PWR030
U 1 1 6132E145
P 5950 5700
F 0 "#PWR030" H 5950 5450 50  0001 C CNN
F 1 "GND" H 5955 5527 50  0000 C CNN
F 2 "" H 5950 5700 50  0001 C CNN
F 3 "" H 5950 5700 50  0001 C CNN
	1    5950 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 6132F135
P 2250 5450
F 0 "SW1" H 2250 5083 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2250 5174 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 2100 5610 50  0001 C CNN
F 3 "~" H 2250 5710 50  0001 C CNN
	1    2250 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 613316E8
P 2950 5350
F 0 "R3" V 2743 5350 50  0000 C CNN
F 1 "10k" V 2834 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2880 5350 50  0001 C CNN
F 3 "~" H 2950 5350 50  0001 C CNN
	1    2950 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 61332211
P 2950 5550
F 0 "R4" V 2743 5550 50  0000 C CNN
F 1 "10k" V 2834 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2880 5550 50  0001 C CNN
F 3 "~" H 2950 5550 50  0001 C CNN
	1    2950 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 5350 2600 5350
Wire Wire Line
	2550 5550 2700 5550
$Comp
L Device:C C20
U 1 1 6133329F
P 3200 5700
F 0 "C20" H 3315 5746 50  0000 L CNN
F 1 "10n" H 3315 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3238 5550 50  0001 C CNN
F 3 "~" H 3200 5700 50  0001 C CNN
	1    3200 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 613340BC
P 3600 5700
F 0 "C21" H 3715 5746 50  0000 L CNN
F 1 "10n" H 3715 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3638 5550 50  0001 C CNN
F 3 "~" H 3600 5700 50  0001 C CNN
	1    3600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5350 3600 5350
Wire Wire Line
	3600 5350 3600 5550
Wire Wire Line
	3100 5550 3200 5550
Wire Wire Line
	3200 5850 3400 5850
Connection ~ 3400 5850
Wire Wire Line
	3400 5850 3600 5850
$Comp
L power:GND #PWR026
U 1 1 61335A0E
P 3400 5850
F 0 "#PWR026" H 3400 5600 50  0001 C CNN
F 1 "GND" H 3405 5677 50  0000 C CNN
F 2 "" H 3400 5850 50  0001 C CNN
F 3 "" H 3400 5850 50  0001 C CNN
	1    3400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5450 3400 5450
Wire Wire Line
	3400 5450 3400 5850
$Comp
L power:GND #PWR024
U 1 1 61336A26
P 1800 5600
F 0 "#PWR024" H 1800 5350 50  0001 C CNN
F 1 "GND" H 1805 5427 50  0000 C CNN
F 2 "" H 1800 5600 50  0001 C CNN
F 3 "" H 1800 5600 50  0001 C CNN
	1    1800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5550 1800 5550
Wire Wire Line
	1800 5550 1800 5600
$Comp
L Device:R R2
U 1 1 61337387
P 1800 5000
F 0 "R2" H 1730 4954 50  0000 R CNN
F 1 "10k" H 1730 5045 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1730 5000 50  0001 C CNN
F 3 "~" H 1800 5000 50  0001 C CNN
	1    1800 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C18
U 1 1 61337D20
P 1650 5500
F 0 "C18" H 1765 5546 50  0000 L CNN
F 1 "10n" H 1765 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1688 5350 50  0001 C CNN
F 3 "~" H 1650 5500 50  0001 C CNN
	1    1650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5350 1800 5350
Wire Wire Line
	1800 5350 1800 5150
$Comp
L power:+3.3V #PWR023
U 1 1 6133A791
P 1800 4850
F 0 "#PWR023" H 1800 4700 50  0001 C CNN
F 1 "+3.3V" H 1815 5023 50  0000 C CNN
F 2 "" H 1800 4850 50  0001 C CNN
F 3 "" H 1800 4850 50  0001 C CNN
	1    1800 4850
	1    0    0    -1  
$EndComp
Text Label 1500 5350 0    50   ~ 0
SW
Wire Wire Line
	1500 5350 1650 5350
Connection ~ 1800 5350
Text Label 3150 5550 0    50   ~ 0
ROT_A
Text Label 3150 5350 0    50   ~ 0
ROT_B
Text HLabel 4600 3250 0    50   Output ~ 0
LE
Text HLabel 4600 3350 0    50   Output ~ 0
SERIAL_CLK
Text HLabel 4600 3450 0    50   Output ~ 0
CONTROL_WORD_BIT
Text Label 4350 3150 0    50   ~ 0
ROT_B
Text Label 4350 3050 0    50   ~ 0
ROT_A
Wire Wire Line
	5800 1950 5800 1350
Wire Wire Line
	5800 1350 5900 1350
$Comp
L Device:C C24
U 1 1 6134C242
P 5650 1500
F 0 "C24" H 5765 1546 50  0000 L CNN
F 1 "0.1u" H 5765 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5688 1350 50  0001 C CNN
F 3 "~" H 5650 1500 50  0001 C CNN
	1    5650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1350 5650 1350
Connection ~ 5800 1350
$Comp
L power:GND #PWR029
U 1 1 6134D5CF
P 5650 1650
F 0 "#PWR029" H 5650 1400 50  0001 C CNN
F 1 "GND" H 5655 1477 50  0000 C CNN
F 2 "" H 5650 1650 50  0001 C CNN
F 3 "" H 5650 1650 50  0001 C CNN
	1    5650 1650
	1    0    0    -1  
$EndComp
Text Label 5900 1350 0    50   ~ 0
~RST
$Comp
L power:GND #PWR032
U 1 1 6134E7DD
P 6250 1950
F 0 "#PWR032" H 6250 1700 50  0001 C CNN
F 1 "GND" H 6255 1777 50  0000 C CNN
F 2 "" H 6250 1950 50  0001 C CNN
F 3 "" H 6250 1950 50  0001 C CNN
	1    6250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1950 6250 1950
Text Label 4300 4350 0    50   ~ 0
SWDIO
Text Label 4300 4450 0    50   ~ 0
SWCLK
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 61351E8A
P 9400 5550
F 0 "J4" H 9508 5831 50  0000 C CNN
F 1 "SWD Programming Header" H 9508 5740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9400 5550 50  0001 C CNN
F 3 "~" H 9400 5550 50  0001 C CNN
	1    9400 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 613539DF
P 9600 5750
F 0 "#PWR035" H 9600 5500 50  0001 C CNN
F 1 "GND" H 9605 5577 50  0000 C CNN
F 2 "" H 9600 5750 50  0001 C CNN
F 3 "" H 9600 5750 50  0001 C CNN
	1    9600 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR034
U 1 1 613546A2
P 9600 5450
F 0 "#PWR034" H 9600 5300 50  0001 C CNN
F 1 "+3.3V" H 9615 5623 50  0000 C CNN
F 2 "" H 9600 5450 50  0001 C CNN
F 3 "" H 9600 5450 50  0001 C CNN
	1    9600 5450
	1    0    0    -1  
$EndComp
Text Label 9600 5550 0    50   ~ 0
SWDIO
Text Label 9600 5650 0    50   ~ 0
SWCLK
$Comp
L TDCG1060M:TDCG1060M DS1
U 1 1 61355EB9
P 9650 1750
F 0 "DS1" H 10233 1796 50  0000 L CNN
F 1 "TDCG1060M" H 10233 1705 50  0000 L CNN
F 2 "parts:DISPLAY_TDCG1060M" H 9650 1750 50  0001 L BNN
F 3 "" H 9650 1750 50  0001 L BNN
F 4 "1.7" H 9650 1750 50  0001 L BNN "PARTREV"
F 5 "VISHAY" H 9650 1750 50  0001 L BNN "MANUFACTURER"
F 6 "IPC 7251" H 9650 1750 50  0001 L BNN "STANDARD"
	1    9650 1750
	1    0    0    -1  
$EndComp
Text Label 10150 1050 1    50   ~ 0
SEG_A
Text Label 10050 1050 1    50   ~ 0
SEG_B
Text Label 9950 1050 1    50   ~ 0
SEG_C
Text Label 9850 1050 1    50   ~ 0
SEG_D
Text Label 9750 1050 1    50   ~ 0
SEG_E
Text Label 9650 1050 1    50   ~ 0
SEG_F
Text Label 9550 1050 1    50   ~ 0
SEG_G
Text Label 9450 1050 1    50   ~ 0
SEG_DP
Text Label 9850 3750 0    50   ~ 0
DIG1
Text Label 9750 3350 0    50   ~ 0
DIG2
Text Label 9650 2950 0    50   ~ 0
DIG3
Text Label 9550 2550 0    50   ~ 0
DIG4
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 61364B33
P 9750 2550
F 0 "Q1" H 9954 2596 50  0000 L CNN
F 1 "2N7002" H 9954 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9950 2475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 9750 2550 50  0001 L CNN
	1    9750 2550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q2
U 1 1 6136EB1C
P 9850 2950
F 0 "Q2" H 10054 2996 50  0000 L CNN
F 1 "2N7002" H 10054 2905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10050 2875 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 9850 2950 50  0001 L CNN
	1    9850 2950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q3
U 1 1 61380F2E
P 9950 3350
F 0 "Q3" H 10154 3396 50  0000 L CNN
F 1 "2N7002" H 10154 3305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10150 3275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 9950 3350 50  0001 L CNN
	1    9950 3350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q4
U 1 1 613857F1
P 10050 3750
F 0 "Q4" H 10254 3796 50  0000 L CNN
F 1 "2N7002" H 10254 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10250 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10050 3750 50  0001 L CNN
	1    10050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2350 9850 2150
Wire Wire Line
	9950 2150 9950 2750
Wire Wire Line
	10050 2150 10050 3150
Wire Wire Line
	10150 2150 10150 3550
$Comp
L power:GND #PWR040
U 1 1 6138BA1A
P 10150 3950
F 0 "#PWR040" H 10150 3700 50  0001 C CNN
F 1 "GND" H 10155 3777 50  0000 C CNN
F 2 "" H 10150 3950 50  0001 C CNN
F 3 "" H 10150 3950 50  0001 C CNN
	1    10150 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 6138BED0
P 10050 3550
F 0 "#PWR039" H 10050 3300 50  0001 C CNN
F 1 "GND" H 10055 3377 50  0000 C CNN
F 2 "" H 10050 3550 50  0001 C CNN
F 3 "" H 10050 3550 50  0001 C CNN
	1    10050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 6138C37F
P 9950 3150
F 0 "#PWR038" H 9950 2900 50  0001 C CNN
F 1 "GND" H 9955 2977 50  0000 C CNN
F 2 "" H 9950 3150 50  0001 C CNN
F 3 "" H 9950 3150 50  0001 C CNN
	1    9950 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6138C7ED
P 9850 2750
F 0 "#PWR037" H 9850 2500 50  0001 C CNN
F 1 "GND" H 9855 2577 50  0000 C CNN
F 2 "" H 9850 2750 50  0001 C CNN
F 3 "" H 9850 2750 50  0001 C CNN
	1    9850 2750
	1    0    0    -1  
$EndComp
Text Label 9350 1050 1    50   ~ 0
SEG_COLON
$Comp
L power:GND #PWR036
U 1 1 6138D855
P 9650 2150
F 0 "#PWR036" H 9650 1900 50  0001 C CNN
F 1 "GND" H 9655 1977 50  0000 C CNN
F 2 "" H 9650 2150 50  0001 C CNN
F 3 "" H 9650 2150 50  0001 C CNN
	1    9650 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 6138ECAF
P 9550 2150
F 0 "#PWR033" H 9550 1900 50  0001 C CNN
F 1 "GND" H 9555 1977 50  0000 C CNN
F 2 "" H 9550 2150 50  0001 C CNN
F 3 "" H 9550 2150 50  0001 C CNN
	1    9550 2150
	1    0    0    -1  
$EndComp
Text Label 9250 1050 1    50   ~ 0
SEG_DOT
$Comp
L Device:R R5
U 1 1 613916D6
P 9250 1200
F 0 "R5" H 9320 1246 50  0000 L CNN
F 1 "82" H 9320 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9180 1200 50  0001 C CNN
F 3 "~" H 9250 1200 50  0001 C CNN
	1    9250 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61392702
P 9350 1200
F 0 "R6" H 9420 1246 50  0000 L CNN
F 1 "82" H 9420 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9280 1200 50  0001 C CNN
F 3 "~" H 9350 1200 50  0001 C CNN
	1    9350 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61392A20
P 9450 1200
F 0 "R8" H 9520 1246 50  0000 L CNN
F 1 "82" H 9520 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9380 1200 50  0001 C CNN
F 3 "~" H 9450 1200 50  0001 C CNN
	1    9450 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61392D0A
P 9550 1200
F 0 "R10" H 9620 1246 50  0000 L CNN
F 1 "82" H 9620 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9480 1200 50  0001 C CNN
F 3 "~" H 9550 1200 50  0001 C CNN
	1    9550 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 61393023
P 9650 1200
F 0 "R12" H 9720 1246 50  0000 L CNN
F 1 "82" H 9720 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9580 1200 50  0001 C CNN
F 3 "~" H 9650 1200 50  0001 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 6139344E
P 9750 1200
F 0 "R14" H 9820 1246 50  0000 L CNN
F 1 "82" H 9820 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9680 1200 50  0001 C CNN
F 3 "~" H 9750 1200 50  0001 C CNN
	1    9750 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 613937A5
P 9850 1200
F 0 "R15" H 9920 1246 50  0000 L CNN
F 1 "82" H 9920 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9780 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 61393AEC
P 9950 1200
F 0 "R16" H 10020 1246 50  0000 L CNN
F 1 "82" H 10020 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9880 1200 50  0001 C CNN
F 3 "~" H 9950 1200 50  0001 C CNN
	1    9950 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 61393EB5
P 10050 1200
F 0 "R17" H 10120 1246 50  0000 L CNN
F 1 "82" H 10120 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9980 1200 50  0001 C CNN
F 3 "~" H 10050 1200 50  0001 C CNN
	1    10050 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 613941A4
P 10150 1200
F 0 "R18" H 10220 1246 50  0000 L CNN
F 1 "82" H 10220 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10080 1200 50  0001 C CNN
F 3 "~" H 10150 1200 50  0001 C CNN
	1    10150 1200
	1    0    0    -1  
$EndComp
Text Label 6700 3050 0    50   ~ 0
SEG_A
Text Label 6700 3150 0    50   ~ 0
SEG_B
Text Label 6700 3250 0    50   ~ 0
SEG_C
Text Label 6700 3350 0    50   ~ 0
SEG_D
Text Label 6700 3450 0    50   ~ 0
SEG_E
Text Label 6700 3550 0    50   ~ 0
SEG_F
Text Label 6700 3650 0    50   ~ 0
SEG_G
Text Label 6700 3750 0    50   ~ 0
SEG_DP
Text Label 6700 3850 0    50   ~ 0
SEG_COLON
Text Label 6700 3950 0    50   ~ 0
SEG_DOT
Text Label 6700 4050 0    50   ~ 0
DIG1
Text Label 6700 4150 0    50   ~ 0
DIG2
Text Label 6700 4250 0    50   ~ 0
DIG3
Text Label 6700 4350 0    50   ~ 0
DIG4
Wire Wire Line
	7250 3050 6700 3050
Wire Wire Line
	7250 3150 6700 3150
Wire Wire Line
	7250 3250 6700 3250
Wire Wire Line
	7250 3350 6700 3350
Wire Wire Line
	7250 3450 6700 3450
Wire Wire Line
	7250 3550 6700 3550
Wire Wire Line
	7250 3650 6700 3650
Wire Wire Line
	7250 3750 6700 3750
Wire Wire Line
	7250 3850 6700 3850
Wire Wire Line
	7250 3950 6700 3950
Wire Wire Line
	7250 4050 6700 4050
Wire Wire Line
	7250 4150 6700 4150
Wire Wire Line
	7250 4250 6700 4250
Wire Wire Line
	7250 4350 6700 4350
Wire Wire Line
	7250 4450 6700 4450
Wire Wire Line
	7250 4550 6700 4550
Wire Wire Line
	3700 3850 4600 3850
Wire Wire Line
	4600 3950 3700 3950
$Comp
L Device:C C25
U 1 1 6142FB31
P 4200 1500
F 0 "C25" H 4315 1546 50  0000 L CNN
F 1 "0.1u" H 4315 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4238 1350 50  0001 C CNN
F 3 "~" H 4200 1500 50  0001 C CNN
	1    4200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1350 4450 1350
Connection ~ 4450 1350
Connection ~ 4450 1650
Wire Wire Line
	4200 1650 4450 1650
$Comp
L Connector:TestPoint TP1
U 1 1 613DAC52
P 5800 1350
F 0 "TP1" H 5858 1468 50  0000 L CNN
F 1 "TestPoint" H 5858 1377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_2.0x2.0mm" H 6000 1350 50  0001 C CNN
F 3 "~" H 6000 1350 50  0001 C CNN
	1    5800 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 613E9042
P 2600 5200
F 0 "R7" V 2393 5200 50  0000 C CNN
F 1 "10k" V 2484 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 5200 50  0001 C CNN
F 3 "~" H 2600 5200 50  0001 C CNN
	1    2600 5200
	-1   0    0    1   
$EndComp
Connection ~ 2600 5350
Wire Wire Line
	2600 5350 2800 5350
$Comp
L Device:R R9
U 1 1 613E96FC
P 2700 5400
F 0 "R9" V 2493 5400 50  0000 C CNN
F 1 "10k" V 2584 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2630 5400 50  0001 C CNN
F 3 "~" H 2700 5400 50  0001 C CNN
	1    2700 5400
	-1   0    0    1   
$EndComp
Connection ~ 2700 5550
Wire Wire Line
	2700 5550 2800 5550
$Comp
L power:+3.3V #PWR0103
U 1 1 613EA3BC
P 2600 4900
F 0 "#PWR0103" H 2600 4750 50  0001 C CNN
F 1 "+3.3V" H 2615 5073 50  0000 C CNN
F 2 "" H 2600 4900 50  0001 C CNN
F 3 "" H 2600 4900 50  0001 C CNN
	1    2600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5050 2600 4900
Wire Wire Line
	2700 5250 2700 4900
Wire Wire Line
	2700 4900 2600 4900
Connection ~ 2600 4900
Connection ~ 1650 5350
Wire Wire Line
	1650 5350 1800 5350
Wire Wire Line
	1650 5650 1750 5650
Wire Wire Line
	1750 5650 1750 5600
Wire Wire Line
	1750 5600 1800 5600
Connection ~ 1800 5600
Wire Wire Line
	2600 3550 4600 3550
Wire Wire Line
	2700 3650 4600 3650
Wire Wire Line
	2800 3750 2800 3850
Wire Wire Line
	2800 3750 4600 3750
Wire Wire Line
	2700 3650 2700 3850
Wire Wire Line
	2600 3550 2600 3850
Wire Wire Line
	2600 4350 2600 4600
Wire Wire Line
	2600 4600 3700 4600
Wire Wire Line
	3700 4600 3700 4550
Wire Wire Line
	2700 4550 2700 4350
Wire Wire Line
	2800 4350 2800 4500
Wire Wire Line
	3700 3850 3700 3800
Wire Wire Line
	3700 3800 2900 3800
Wire Wire Line
	2900 3800 2900 3850
Wire Wire Line
	4300 4350 4600 4350
Wire Wire Line
	4600 4450 4300 4450
Wire Wire Line
	4600 3050 4350 3050
Wire Wire Line
	4600 3150 4350 3150
Wire Wire Line
	3650 4250 3650 4550
Wire Wire Line
	3650 4550 2700 4550
Wire Wire Line
	3650 4250 3800 4250
Wire Wire Line
	2800 4500 3600 4500
Wire Wire Line
	3600 4500 3600 4150
Wire Wire Line
	3400 4050 3400 4450
Wire Wire Line
	3400 4450 2900 4450
Wire Wire Line
	2900 4450 2900 4350
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J5
U 1 1 6155CAFE
P 2700 4150
F 0 "J5" V 2796 3862 50  0000 R CNN
F 1 "Conn_02x04_Odd_Even" V 2705 3862 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 2700 4150 50  0001 C CNN
F 3 "~" H 2700 4150 50  0001 C CNN
	1    2700 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 4050 3700 3950
Wire Wire Line
	3400 4050 3700 4050
Wire Wire Line
	4600 4050 3750 4050
Wire Wire Line
	3750 4050 3750 4150
Wire Wire Line
	3750 4150 3600 4150
Wire Wire Line
	4600 4150 3800 4150
Wire Wire Line
	3800 4150 3800 4250
Wire Wire Line
	3700 4550 3850 4550
Wire Wire Line
	4600 4250 3850 4250
Wire Wire Line
	3850 4250 3850 4550
$Comp
L Device:C C28
U 1 1 61460616
P 3950 1500
F 0 "C28" H 4065 1546 50  0000 L CNN
F 1 "0.1u" H 4065 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3988 1350 50  0001 C CNN
F 3 "~" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1350 4200 1350
Connection ~ 4200 1350
Wire Wire Line
	3950 1650 4200 1650
Connection ~ 4200 1650
$Comp
L power:+3.3V #PWR?
U 1 1 614E75B2
P 5200 1950
F 0 "#PWR?" H 5200 1800 50  0001 C CNN
F 1 "+3.3V" H 5215 2123 50  0000 C CNN
F 2 "" H 5200 1950 50  0001 C CNN
F 3 "" H 5200 1950 50  0001 C CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
