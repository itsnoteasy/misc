EESchema Schematic File Version 5
LIBS:keyb-cache
EELAYER 29 0
EELAYER END
$Descr A1 33110 23386
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
L Connector:Conn_01x04_Female J1
U 1 1 5CDEEBCD
P 2000 1850
F 0 "J1" H 2028 1826 50  0000 L CNN
F 1 "Conn_01x04_Female" H 2028 1735 50  0000 L CNN
F 2 "MX_Alps_Hybrid:MXOnly-1U" H 2000 1850 50  0001 C CNN
F 3 "~" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5CEBA84C
P 1400 1850
F 0 "D1" V 1446 1771 50  0000 R CNN
F 1 "D" V 1355 1771 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 1400 1850 50  0001 C CNN
F 3 "~" H 1400 1850 50  0001 C CNN
	1    1400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1850 1800 1850
$Comp
L Device:R R1
U 1 1 5CEF1F31
P 1700 2100
F 0 "R1" H 1770 2146 50  0000 L CNN
F 1 "R1K" H 1770 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1630 2100 50  0001 C CNN
F 3 "~" H 1700 2100 50  0001 C CNN
	1    1700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1950 1800 1950
Text Notes 1850 1500 0    50   ~ 0
1
Text Notes 1850 1200 0    50   ~ 0
6
Wire Wire Line
	2725 1750 2725 1675
Wire Wire Line
	2750 1750 2725 1750
Wire Wire Line
	1725 1750 1725 1675
Wire Wire Line
	1725 1675 2725 1675
Wire Wire Line
	1725 1750 1800 1750
Wire Wire Line
	2750 2050 2725 2050
Wire Wire Line
	1800 2050 1800 2100
Wire Wire Line
	1800 2100 2725 2100
Wire Wire Line
	2725 2100 2725 2050
Connection ~ 2725 2050
Connection ~ 1800 2050
Connection ~ 1700 2250
Wire Wire Line
	1700 2250 2725 2250
Wire Wire Line
	1200 2250 1700 2250
Wire Wire Line
	1200 2050 1800 2050
Wire Wire Line
	1200 1750 1725 1750
Connection ~ 1725 1750
Connection ~ 1250 1850
Wire Wire Line
	1250 1675 1250 1850
Wire Wire Line
	1250 1850 1250 2600
Text Notes 4925 1500 0    50   ~ 0
1
Text Notes 4925 1200 0    50   ~ 0
6
Wire Wire Line
	4775 1950 4875 1950
$Comp
L Device:R R2
U 1 1 5CF33072
P 4775 2100
F 0 "R2" H 4845 2146 50  0000 L CNN
F 1 "R1K" H 4845 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4705 2100 50  0001 C CNN
F 3 "~" H 4775 2100 50  0001 C CNN
	1    4775 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 1850 4875 1850
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5CF33081
P 5075 1850
F 0 "J2" H 5103 1826 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5103 1735 50  0000 L CNN
F 2 "MX_Alps_Hybrid:MXOnly-1U" H 5075 1850 50  0001 C CNN
F 3 "~" H 5075 1850 50  0001 C CNN
	1    5075 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5CF3308D
P 4475 1850
F 0 "D2" V 4521 1771 50  0000 R CNN
F 1 "D" V 4430 1771 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 4475 1850 50  0001 C CNN
F 3 "~" H 4475 1850 50  0001 C CNN
	1    4475 1850
	1    0    0    -1  
$EndComp
Connection ~ 4325 1850
$Comp
L Connector:Conn_01x01_Female JG2A1
U 1 1 5CF33098
P 4075 2050
F 0 "JG2A1" H 3967 2143 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3967 2234 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 4075 2050 50  0001 C CNN
F 3 "~" H 4075 2050 50  0001 C CNN
	1    4075 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4325 1850 4325 2600
Connection ~ 5800 2050
Wire Wire Line
	5800 1750 5800 1675
Connection ~ 4875 2050
Connection ~ 4800 1750
Wire Wire Line
	4800 1750 4800 1675
Wire Wire Line
	5825 2050 5800 2050
Wire Wire Line
	5800 2050 5800 1975
Connection ~ 4775 2250
Wire Wire Line
	4775 2250 5800 2250
Wire Wire Line
	4800 1750 4875 1750
Wire Wire Line
	4325 1675 4325 1850
Wire Wire Line
	5825 1750 5800 1750
Wire Wire Line
	4875 2050 4875 2100
Wire Wire Line
	5800 2100 5800 2050
$Comp
L Connector:Conn_01x01_Female JD2B1
U 1 1 5CF330B2
P 4325 2800
F 0 "JD2B1" H 4353 2826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4353 2735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 4325 2800 50  0001 C CNN
F 3 "~" H 4325 2800 50  0001 C CNN
	1    4325 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4875 2100 5800 2100
Wire Wire Line
	4275 1750 4800 1750
$Comp
L Connector:Conn_01x01_Female JR2A1
U 1 1 5CF330BE
P 4075 2250
F 0 "JR2A1" H 3967 2343 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3967 2434 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 4075 2250 50  0001 C CNN
F 3 "~" H 4075 2250 50  0001 C CNN
	1    4075 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 1675 5800 1675
$Comp
L Connector:Conn_01x01_Female JR2B1
U 1 1 5CF330CA
P 6025 2250
F 0 "JR2B1" H 6053 2276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 6053 2185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 6025 2250 50  0001 C CNN
F 3 "~" H 6025 2250 50  0001 C CNN
	1    6025 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2B1
U 1 1 5CF330D5
P 6025 1750
F 0 "J2B1" H 6053 1776 50  0000 L CNN
F 1 "Conn_01x01_Female" H 6053 1685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 6025 1750 50  0001 C CNN
F 3 "~" H 6025 1750 50  0001 C CNN
	1    6025 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4275 2050 4300 2050
$Comp
L Connector:Conn_01x01_Female J2A1
U 1 1 5CF330E0
P 4075 1750
F 0 "J2A1" H 3967 1843 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3967 1934 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 4075 1750 50  0001 C CNN
F 3 "~" H 4075 1750 50  0001 C CNN
	1    4075 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4275 2250 4300 2250
$Comp
L Connector:Conn_01x01_Female JD2A1
U 1 1 5CF330EB
P 4325 1475
F 0 "JD2A1" H 4217 1568 50  0000 C CNN
F 1 "Conn_01x01_Female" H 4217 1659 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 4325 1475 50  0001 C CNN
F 3 "~" H 4325 1475 50  0001 C CNN
	1    4325 1475
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female JG2B1
U 1 1 5CF330F6
P 6025 2050
F 0 "JG2B1" H 6053 2076 50  0000 L CNN
F 1 "Conn_01x01_Female" H 6053 1985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 6025 2050 50  0001 C CNN
F 3 "~" H 6025 2050 50  0001 C CNN
	1    6025 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5CF36636
P 8175 1850
F 0 "J3" H 8203 1826 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8203 1735 50  0000 L CNN
F 2 "MX_Alps_Hybrid:MXOnly-1U" H 8175 1850 50  0001 C CNN
F 3 "~" H 8175 1850 50  0001 C CNN
	1    8175 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3B1
U 1 1 5CF36641
P 9125 1750
F 0 "J3B1" H 9153 1776 50  0000 L CNN
F 1 "Conn_01x01_Female" H 9153 1685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 9125 1750 50  0001 C CNN
F 3 "~" H 9125 1750 50  0001 C CNN
	1    9125 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7725 1850 7975 1850
Wire Wire Line
	8900 2050 8900 1975
$Comp
L Connector:Conn_01x01_Female JD3B1
U 1 1 5CF3664E
P 7425 2800
F 0 "JD3B1" H 7453 2826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 7453 2735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7425 2800 50  0001 C CNN
F 3 "~" H 7425 2800 50  0001 C CNN
	1    7425 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	8925 2050 8900 2050
$Comp
L Connector:Conn_01x01_Female JD3A1
U 1 1 5CF36659
P 7425 1475
F 0 "JD3A1" H 7317 1568 50  0000 C CNN
F 1 "Conn_01x01_Female" H 7317 1659 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7425 1475 50  0001 C CNN
F 3 "~" H 7425 1475 50  0001 C CNN
	1    7425 1475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7900 1750 7900 1675
Wire Wire Line
	8900 1750 8900 1675
Wire Wire Line
	7425 1850 7425 2600
Wire Wire Line
	7975 2100 8900 2100
Wire Wire Line
	7425 1675 7425 1850
Wire Wire Line
	8900 2100 8900 2050
Wire Wire Line
	7900 1750 7975 1750
Wire Wire Line
	7375 2250 7400 2250
Wire Wire Line
	7975 2050 7975 2100
$Comp
L Connector:Conn_01x01_Female J3A1
U 1 1 5CF3666C
P 7175 1750
F 0 "J3A1" H 7067 1843 50  0000 C CNN
F 1 "Conn_01x01_Female" H 7067 1934 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7175 1750 50  0001 C CNN
F 3 "~" H 7175 1750 50  0001 C CNN
	1    7175 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8925 1750 8900 1750
Wire Wire Line
	7875 2250 8900 2250
Connection ~ 7900 1750
Connection ~ 7975 2050
Wire Wire Line
	7875 1950 7975 1950
Text Notes 8025 1500 0    50   ~ 0
1
Wire Wire Line
	7900 1675 8900 1675
Wire Wire Line
	7375 1750 7900 1750
Wire Wire Line
	7375 2050 7400 2050
Connection ~ 7425 1850
Connection ~ 8900 2050
$Comp
L Connector:Conn_01x01_Female JR3A1
U 1 1 5CF36681
P 7175 2250
F 0 "JR3A1" H 7067 2343 50  0000 C CNN
F 1 "Conn_01x01_Female" H 7067 2434 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7175 2250 50  0001 C CNN
F 3 "~" H 7175 2250 50  0001 C CNN
	1    7175 2250
	-1   0    0    1   
$EndComp
Text Notes 8025 1200 0    50   ~ 0
6
Connection ~ 7875 2250
$Comp
L Device:D D3
U 1 1 5CF3668F
P 7575 1850
F 0 "D3" V 7621 1771 50  0000 R CNN
F 1 "D" V 7530 1771 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 7575 1850 50  0001 C CNN
F 3 "~" H 7575 1850 50  0001 C CNN
	1    7575 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female JG3A1
U 1 1 5CF36699
P 7175 2050
F 0 "JG3A1" H 7067 2143 50  0000 C CNN
F 1 "Conn_01x01_Female" H 7067 2234 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 7175 2050 50  0001 C CNN
F 3 "~" H 7175 2050 50  0001 C CNN
	1    7175 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5CF366A5
P 7875 2100
F 0 "R3" H 7945 2146 50  0000 L CNN
F 1 "R1K" H 7945 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7805 2100 50  0001 C CNN
F 3 "~" H 7875 2100 50  0001 C CNN
	1    7875 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female JR3B1
U 1 1 5CF366B0
P 9125 2250
F 0 "JR3B1" H 9153 2276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 9153 2185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 9125 2250 50  0001 C CNN
F 3 "~" H 9125 2250 50  0001 C CNN
	1    9125 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female JG3B1
U 1 1 5CF366BB
P 9125 2050
F 0 "JG3B1" H 9153 2076 50  0000 L CNN
F 1 "Conn_01x01_Female" H 9153 1985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 9125 2050 50  0001 C CNN
F 3 "~" H 9125 2050 50  0001 C CNN
	1    9125 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 1750 11050 1675
Wire Wire Line
	10525 2050 10550 2050
$Comp
L Connector:Conn_01x01_Female JR4B1
U 1 1 5CF3A22A
P 12275 2250
F 0 "JR4B1" H 12303 2276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 12303 2185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 12275 2250 50  0001 C CNN
F 3 "~" H 12275 2250 50  0001 C CNN
	1    12275 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12075 2050 12050 2050
$Comp
L Connector:Conn_01x01_Female J4B1
U 1 1 5CF3A236
P 12275 1750
F 0 "J4B1" H 12303 1776 50  0000 L CNN
F 1 "Conn_01x01_Female" H 12303 1685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 12275 1750 50  0001 C CNN
F 3 "~" H 12275 1750 50  0001 C CNN
	1    12275 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10875 1850 11125 1850
Wire Wire Line
	11050 1675 12050 1675
$Comp
L Connector:Conn_01x01_Female JR4A1
U 1 1 5CF3A242
P 10325 2250
F 0 "JR4A1" H 10217 2343 50  0000 C CNN
F 1 "Conn_01x01_Female" H 10217 2434 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 10325 2250 50  0001 C CNN
F 3 "~" H 10325 2250 50  0001 C CNN
	1    10325 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:D D4
U 1 1 5CF3A24E
P 10725 1850
F 0 "D4" V 10771 1771 50  0000 R CNN
F 1 "D" V 10680 1771 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 10725 1850 50  0001 C CNN
F 3 "~" H 10725 1850 50  0001 C CNN
	1    10725 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11025 2250 12050 2250
Connection ~ 11125 2050
Wire Wire Line
	12050 1750 12050 1675
Wire Wire Line
	11025 1950 11125 1950
Wire Wire Line
	10575 1850 10575 2600
Connection ~ 10575 1850
Wire Wire Line
	11050 1750 11125 1750
Wire Wire Line
	11125 2050 11125 2100
Wire Wire Line
	12050 2100 12050 2050
Text Notes 11175 1200 0    50   ~ 0
6
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5CF3A267
P 11325 1850
F 0 "J4" H 11353 1826 50  0000 L CNN
F 1 "Conn_01x04_Female" H 11353 1735 50  0000 L CNN
F 2 "MX_Alps_Hybrid:MXOnly-1U" H 11325 1850 50  0001 C CNN
F 3 "~" H 11325 1850 50  0001 C CNN
	1    11325 1850
	1    0    0    -1  
$EndComp
Connection ~ 11025 2250
Wire Wire Line
	10575 1675 10575 1850
Text Notes 11175 1500 0    50   ~ 0
1
Wire Wire Line
	11125 2100 12050 2100
Wire Wire Line
	10525 2250 10550 2250
Wire Wire Line
	12075 1750 12050 1750
Connection ~ 11050 1750
$Comp
L Connector:Conn_01x01_Female JD4A1
U 1 1 5CF3A278
P 10575 1475
F 0 "JD4A1" H 10467 1568 50  0000 C CNN
F 1 "Conn_01x01_Female" H 10467 1659 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 10575 1475 50  0001 C CNN
F 3 "~" H 10575 1475 50  0001 C CNN
	1    10575 1475
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female JG4B1
U 1 1 5CF3A283
P 12275 2050
F 0 "JG4B1" H 12303 2076 50  0000 L CNN
F 1 "Conn_01x01_Female" H 12303 1985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 12275 2050 50  0001 C CNN
F 3 "~" H 12275 2050 50  0001 C CNN
	1    12275 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10525 1750 11050 1750
$Comp
L Connector:Conn_01x01_Female JG4A1
U 1 1 5CF3A28F
P 10325 2050
F 0 "JG4A1" H 10217 2143 50  0000 C CNN
F 1 "Conn_01x01_Female" H 10217 2234 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 10325 2050 50  0001 C CNN
F 3 "~" H 10325 2050 50  0001 C CNN
	1    10325 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5CF3A29B
P 11025 2100
F 0 "R4" H 11095 2146 50  0000 L CNN
F 1 "R1K" H 11095 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10955 2100 50  0001 C CNN
F 3 "~" H 11025 2100 50  0001 C CNN
	1    11025 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4A1
U 1 1 5CF3A2A5
P 10325 1750
F 0 "J4A1" H 10217 1843 50  0000 C CNN
F 1 "Conn_01x01_Female" H 10217 1934 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 10325 1750 50  0001 C CNN
F 3 "~" H 10325 1750 50  0001 C CNN
	1    10325 1750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female JD4B1
U 1 1 5CF3A2B0
P 10575 2800
F 0 "JD4B1" H 10603 2826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 10603 2735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 10575 2800 50  0001 C CNN
F 3 "~" H 10575 2800 50  0001 C CNN
	1    10575 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	2725 1675 3925 1675
Wire Wire Line
	3925 1675 3925 1075
Wire Wire Line
	3925 1075 4800 1075
Wire Wire Line
	4800 1075 4800 1675
Connection ~ 2725 1675
Connection ~ 4800 1675
Wire Wire Line
	5800 1675 7000 1675
Wire Wire Line
	7000 1675 7000 1075
Wire Wire Line
	7000 1075 7900 1075
Wire Wire Line
	7900 1075 7900 1675
Connection ~ 5800 1675
Connection ~ 7900 1675
Wire Wire Line
	8900 1675 8900 1150
Wire Wire Line
	8900 1150 11050 1150
Wire Wire Line
	11050 1150 11050 1675
Connection ~ 8900 1675
Connection ~ 11050 1675
Wire Wire Line
	2725 1925 4300 1925
Wire Wire Line
	4300 1925 4300 2050
Connection ~ 4300 2050
Wire Wire Line
	4300 2050 4875 2050
Wire Wire Line
	2725 2250 2725 2150
Wire Wire Line
	2725 2150 4300 2150
Wire Wire Line
	4300 2150 4300 2250
Wire Wire Line
	2725 1925 2725 2050
Connection ~ 2725 2250
Wire Wire Line
	2725 2250 2750 2250
Connection ~ 4300 2250
Wire Wire Line
	4300 2250 4775 2250
$Comp
L Connector:Conn_01x01_Female JR1B1
U 1 1 5CF163E8
P 2950 2250
F 0 "JR1B1" H 2978 2276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2978 2185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2950 2250 50  0001 C CNN
F 3 "~" H 2950 2250 50  0001 C CNN
	1    2950 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female JG1B1
U 1 1 5CF1AF90
P 2950 2050
F 0 "JG1B1" H 2978 2076 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2978 1985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2950 2050 50  0001 C CNN
F 3 "~" H 2950 2050 50  0001 C CNN
	1    2950 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J1B1
U 1 1 5CF18059
P 2950 1750
F 0 "J1B1" H 2978 1776 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2978 1685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2950 1750 50  0001 C CNN
F 3 "~" H 2950 1750 50  0001 C CNN
	1    2950 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female JD1B1
U 1 1 5CF19A46
P 1250 2800
F 0 "JD1B1" H 1278 2826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 1278 2735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1250 2800 50  0001 C CNN
F 3 "~" H 1250 2800 50  0001 C CNN
	1    1250 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Female JR1A1
U 1 1 5CF1C9A9
P 1000 2250
F 0 "JR1A1" H 892 2343 50  0000 C CNN
F 1 "Conn_01x01_Female" H 892 2434 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1000 2250 50  0001 C CNN
F 3 "~" H 1000 2250 50  0001 C CNN
	1    1000 2250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female JG1A1
U 1 1 5CF1C9A8
P 1000 2050
F 0 "JG1A1" H 892 2143 50  0000 C CNN
F 1 "Conn_01x01_Female" H 892 2234 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1000 2050 50  0001 C CNN
F 3 "~" H 1000 2050 50  0001 C CNN
	1    1000 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female JD1A1
U 1 1 5CF1E099
P 1250 1475
F 0 "JD1A1" H 1142 1568 50  0000 C CNN
F 1 "Conn_01x01_Female" H 1142 1659 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1250 1475 50  0001 C CNN
F 3 "~" H 1250 1475 50  0001 C CNN
	1    1250 1475
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female J1A1
U 1 1 5CF1C1AF
P 1000 1750
F 0 "J1A1" H 892 1843 50  0000 C CNN
F 1 "Conn_01x01_Female" H 892 1934 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 1000 1750 50  0001 C CNN
F 3 "~" H 1000 1750 50  0001 C CNN
	1    1000 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 2250 5800 2175
Wire Wire Line
	5800 2175 7400 2175
Wire Wire Line
	7400 2175 7400 2250
Connection ~ 5800 2250
Wire Wire Line
	5800 2250 5825 2250
Connection ~ 7400 2250
Wire Wire Line
	7400 2250 7875 2250
Wire Wire Line
	5800 1975 7400 1975
Wire Wire Line
	7400 1975 7400 2050
Connection ~ 7400 2050
Wire Wire Line
	7400 2050 7975 2050
Wire Wire Line
	8900 1975 10550 1975
Wire Wire Line
	10550 1975 10550 2050
Connection ~ 10550 2050
Wire Wire Line
	10550 2050 11125 2050
Wire Wire Line
	8900 2250 8900 2175
Wire Wire Line
	8900 2175 10550 2175
Wire Wire Line
	10550 2175 10550 2250
Connection ~ 8900 2250
Wire Wire Line
	8900 2250 8925 2250
Connection ~ 10550 2250
Wire Wire Line
	10550 2250 11025 2250
Text Label 1975 2250 0    50   ~ 0
+5V
Text Label 2150 2100 0    50   ~ 0
GND
$Comp
L Connector:Conn_01x01_Female JR5B1
U 1 1 5CF265E5
P 15700 2250
F 0 "JR5B1" H 15728 2276 50  0000 L CNN
F 1 "Conn_01x01_Female" H 15728 2185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 15700 2250 50  0001 C CNN
F 3 "~" H 15700 2250 50  0001 C CNN
	1    15700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 2050 15475 2050
$Comp
L Connector:Conn_01x01_Female J5B1
U 1 1 5CF265F1
P 15700 1750
F 0 "J5B1" H 15728 1776 50  0000 L CNN
F 1 "Conn_01x01_Female" H 15728 1685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 15700 1750 50  0001 C CNN
F 3 "~" H 15700 1750 50  0001 C CNN
	1    15700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 1850 14550 1850
Wire Wire Line
	14475 1675 15475 1675
$Comp
L Connector:Conn_01x01_Female JR5A1
U 1 1 5CF265FE
P 13750 2250
F 0 "JR5A1" H 13642 2343 50  0000 C CNN
F 1 "Conn_01x01_Female" H 13642 2434 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13750 2250 50  0001 C CNN
F 3 "~" H 13750 2250 50  0001 C CNN
	1    13750 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:D D5
U 1 1 5CF2660A
P 14150 1850
F 0 "D5" V 14196 1771 50  0000 R CNN
F 1 "D" V 14105 1771 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 14150 1850 50  0001 C CNN
F 3 "~" H 14150 1850 50  0001 C CNN
	1    14150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15475 1750 15475 1675
Wire Wire Line
	14450 1950 14550 1950
Wire Wire Line
	14000 1850 14000 2600
Connection ~ 14000 1850
Connection ~ 15475 2050
Wire Wire Line
	15475 2100 15475 2050
Text Notes 14600 1200 0    50   ~ 0
6
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5CF26623
P 14750 1850
F 0 "J5" H 14778 1826 50  0000 L CNN
F 1 "Conn_01x04_Female" H 14778 1735 50  0000 L CNN
F 2 "MX_Alps_Hybrid:MXOnly-1U" H 14750 1850 50  0001 C CNN
F 3 "~" H 14750 1850 50  0001 C CNN
	1    14750 1850
	1    0    0    -1  
$EndComp
Connection ~ 14450 2250
Wire Wire Line
	14000 1675 14000 1850
Text Notes 14600 1500 0    50   ~ 0
1
Wire Wire Line
	15500 1750 15475 1750
$Comp
L Connector:Conn_01x01_Female JD5A1
U 1 1 5CF26635
P 14000 1475
F 0 "JD5A1" H 13892 1568 50  0000 C CNN
F 1 "Conn_01x01_Female" H 13892 1659 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 14000 1475 50  0001 C CNN
F 3 "~" H 14000 1475 50  0001 C CNN
	1    14000 1475
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Female JG5B1
U 1 1 5CF26640
P 15700 2050
F 0 "JG5B1" H 15728 2076 50  0000 L CNN
F 1 "Conn_01x01_Female" H 15728 1985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 15700 2050 50  0001 C CNN
F 3 "~" H 15700 2050 50  0001 C CNN
	1    15700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	15475 2050 15475 1975
$Comp
L Connector:Conn_01x01_Female JG5A1
U 1 1 5CF2664D
P 13750 2050
F 0 "JG5A1" H 13642 2143 50  0000 C CNN
F 1 "Conn_01x01_Female" H 13642 2234 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13750 2050 50  0001 C CNN
F 3 "~" H 13750 2050 50  0001 C CNN
	1    13750 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5CF26659
P 14450 2100
F 0 "R5" H 14520 2146 50  0000 L CNN
F 1 "R1K" H 14520 2055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 14380 2100 50  0001 C CNN
F 3 "~" H 14450 2100 50  0001 C CNN
	1    14450 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5A1
U 1 1 5CF26664
P 13750 1750
F 0 "J5A1" H 13642 1843 50  0000 C CNN
F 1 "Conn_01x01_Female" H 13642 1934 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 13750 1750 50  0001 C CNN
F 3 "~" H 13750 1750 50  0001 C CNN
	1    13750 1750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female JD5B1
U 1 1 5CF2666F
P 14000 2800
F 0 "JD5B1" H 14028 2826 50  0000 L CNN
F 1 "Conn_01x01_Female" H 14028 2735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 14000 2800 50  0001 C CNN
F 3 "~" H 14000 2800 50  0001 C CNN
	1    14000 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	12050 1675 12050 1150
Wire Wire Line
	12050 1150 14475 1150
Connection ~ 12050 1675
Wire Wire Line
	12050 2175 12050 2250
Connection ~ 12050 2250
Wire Wire Line
	12050 2250 12075 2250
Wire Wire Line
	13950 2050 14325 2050
Wire Wire Line
	13950 2250 14450 2250
Wire Wire Line
	15425 2175 15425 2250
Wire Wire Line
	14450 2250 15425 2250
Wire Wire Line
	12050 2175 15425 2175
Connection ~ 15425 2250
Wire Wire Line
	15425 2250 15500 2250
Wire Wire Line
	13950 1750 14475 1750
Wire Wire Line
	14475 1150 14475 1675
Connection ~ 12050 2100
Wire Wire Line
	12050 2100 14225 2100
Wire Wire Line
	14325 2050 14325 2075
Wire Wire Line
	14325 2075 14225 2075
Wire Wire Line
	14225 2075 14225 2100
Connection ~ 14325 2050
Wire Wire Line
	14325 2050 14550 2050
Connection ~ 14225 2100
Wire Wire Line
	14225 2100 15475 2100
Wire Wire Line
	14475 1675 14475 1750
Connection ~ 14475 1675
Connection ~ 14475 1750
Wire Wire Line
	14475 1750 14550 1750
$EndSCHEMATC
