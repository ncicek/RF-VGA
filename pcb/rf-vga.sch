EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5000 1850 1100 400 
U 613D916B
F0 "vga" 50
F1 "vga.sch" 50
F2 "LE" I L 5000 1900 50 
F3 "SERIAL_CLK" I L 5000 2000 50 
F4 "CONTROL_WORD_BIT" I L 5000 2100 50 
$EndSheet
$Sheet
S 2800 1850 1400 450 
U 61327CE5
F0 "mcu" 50
F1 "mcu.sch" 50
F2 "LE" O R 4200 1900 50 
F3 "SERIAL_CLK" O R 4200 2000 50 
F4 "CONTROL_WORD_BIT" O R 4200 2100 50 
$EndSheet
Wire Wire Line
	4200 1900 4650 1900
Wire Wire Line
	4200 2000 4650 2000
Wire Wire Line
	4200 2100 4650 2100
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 613A2E03
P 4450 2000
F 0 "J1" H 4558 2281 50  0000 C CNN
F 1 "TEST CONNECTOR" H 4558 2190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4450 2000 50  0001 C CNN
F 3 "~" H 4450 2000 50  0001 C CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
Connection ~ 4650 1900
Wire Wire Line
	4650 1900 5000 1900
Connection ~ 4650 2000
Wire Wire Line
	4650 2000 5000 2000
Connection ~ 4650 2100
Wire Wire Line
	4650 2100 5000 2100
$Sheet
S 2050 3700 550  600 
U 6138BAE8
F0 "psu" 50
F1 "psu.sch" 50
$EndSheet
$EndSCHEMATC
