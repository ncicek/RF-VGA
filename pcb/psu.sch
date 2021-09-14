EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Connector:Barrel_Jack_Switch J7
U 1 1 6138CEF0
P 2100 1850
F 0 "J7" H 2157 2167 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 2157 2076 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 2150 1810 50  0001 C CNN
F 3 "~" H 2150 1810 50  0001 C CNN
	1    2100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6138D8BC
P 2400 2100
F 0 "#PWR0101" H 2400 1850 50  0001 C CNN
F 1 "GND" H 2405 1927 50  0000 C CNN
F 2 "" H 2400 2100 50  0001 C CNN
F 3 "" H 2400 2100 50  0001 C CNN
	1    2400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1850 2400 1950
Connection ~ 2400 1950
Wire Wire Line
	2400 1950 2400 2050
$Comp
L Device:C C26
U 1 1 6138EAAB
P 2800 1900
F 0 "C26" H 2915 1946 50  0000 L CNN
F 1 "1u" H 2915 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2838 1750 50  0001 C CNN
F 3 "~" H 2800 1900 50  0001 C CNN
	1    2800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1750 2800 1750
Wire Wire Line
	2800 2050 2400 2050
Connection ~ 2400 2050
Wire Wire Line
	2400 2050 2400 2100
$Comp
L power:+5V #PWR0102
U 1 1 61391A77
P 4950 1750
F 0 "#PWR0102" H 4950 1600 50  0001 C CNN
F 1 "+5V" H 4965 1923 50  0000 C CNN
F 2 "" H 4950 1750 50  0001 C CNN
F 3 "" H 4950 1750 50  0001 C CNN
	1    4950 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 6139237F
P 3350 1850
F 0 "J8" H 3458 2031 50  0000 C CNN
F 1 "30V input" H 3458 1940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3350 1850 50  0001 C CNN
F 3 "~" H 3350 1850 50  0001 C CNN
	1    3350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1750 3550 1750
Connection ~ 2800 1750
Wire Wire Line
	2800 2050 3550 2050
Wire Wire Line
	3550 2050 3550 1950
Connection ~ 2800 2050
Wire Wire Line
	3550 1750 3550 1850
Connection ~ 3550 1750
Wire Wire Line
	3550 1750 4050 1750
Connection ~ 3550 2050
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 613C249F
P 5150 1800
F 0 "J9" H 5258 1981 50  0000 C CNN
F 1 "5V input bypass" H 5258 1890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5150 1800 50  0001 C CNN
F 3 "~" H 5150 1800 50  0001 C CNN
	1    5150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1750 4800 1750
Wire Wire Line
	5350 1750 5350 1800
Connection ~ 4950 1750
Wire Wire Line
	4950 1750 5350 1750
Wire Wire Line
	5350 1900 5350 2050
Wire Wire Line
	5350 2050 4800 2050
$Comp
L Device:C C27
U 1 1 613C3DD6
P 4800 1900
F 0 "C27" H 4915 1946 50  0000 L CNN
F 1 "1u" H 4915 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4838 1750 50  0001 C CNN
F 3 "~" H 4800 1900 50  0001 C CNN
	1    4800 1900
	1    0    0    -1  
$EndComp
Connection ~ 4800 1750
Wire Wire Line
	4800 1750 4950 1750
Connection ~ 4800 2050
$Comp
L Regulator_Linear:LM78M05_TO252 U4
U 1 1 613C5624
P 4350 1750
F 0 "U4" H 4350 1992 50  0000 C CNN
F 1 "LM78M05_TO252" H 4350 1901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 4350 1975 50  0001 C CIN
F 3 "https://www.onsemi.com/pub/Collateral/MC78M00-D.PDF" H 4350 1700 50  0001 C CNN
	1    4350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2050 4350 2050
Connection ~ 4350 2050
Wire Wire Line
	4350 2050 4800 2050
$EndSCHEMATC
