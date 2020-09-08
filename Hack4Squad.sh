#!/bin/sh

# Name: Hack4Squad 
# Clone the repository and add your features in the develop branch 
# Author: Mohamed E.Faleh // @KMx404 >> All contributers are mentioned in the README file 
# Version: V0.1 
# BashV: V4.1+ 
# Happy Hacking 

nmap_scan1(){
	echo ' '
	echo '#################  Hack4Squad - NmapBasic Website Scan  #################'
	read -p 'Your target:$ ' scansite
	nmap -sS -O $scansite
}
nmap_scan2(){
	echo '################# Hack4Squad - NmapBasic Address Scan  #################' 
	read -p 'Your address:$ ' scanaddress
	nmap -sS $scanaddress 
}
namp_scan3(){
	echo '################# Hack4Squad - NmapBasic OS Scan #################' 
	nmap -A -O 
}  
nmap_scann(){
    echo ' '	
	echo '#################  Hack4Squad - NmapScans  #################'
	echo '1 - SCAN A WEBSITE' 
	echo '2 - SCAN AN ADDRESS' 
	echo '3 - SCAN AN OS'
	echo '3 - EXIT'
	echo ' '
	read -p 'Pick$: ' po 
	if [ $po = '1' ]; then
	       nmap_scan1
        elif [ $po = '2' ]; then
	       nmap_scan2 
	fi 
}
web_scans(){
	echo '' 
	echo '################# Hack4Sqad - Webscans #################'
	echo '1 - SCANT3R ' 
	echo '2 - RETUR ' 
	echo ' '
	read -p 'pick$: ' poo 
	if [ $poo = '1' ]; then
		python3 scant3r/scant3r.py
	fi 
}
clear
echo   '\e[1;31m-------------------------------------------------------------'
echo   ' _   _            _    _  _  ____                        _ '
echo   '| | | | __ _  ___| | _| || |/ ___|  __ _ _   _  __ _  __| |'
echo   '| |_| |/ _` |/ __| |/ / || |\___ \ / _` | | | |/ _` |/ _` |'
echo   '|  _  | (_| | (__|   <|__   _|__) | (_| | |_| | (_| | (_| |'
echo   '|_| |_|\__,_|\___|_|\_\  |_||____/ \__, |\__,_|\__,_|\__,_|'
echo   '                                      |_|                  '
echo   '------------------------------------------------------------- '
echo   ' \e[1;33m                   HACKING UTILITY             \e[0m     '
echo   '\e[1;31m                            Author: @KMx404            \e[0m'
echo   '\e[1;31m-------------------------------------------------------------\e[0m'
echo   '       1 - \e[1;34m   NMAP SCAN           \e[0m                   '
echo   '       2 - \e[1;34m   WEB SECURITY SCANNERS \e[0m                                                  '
echo   '       3 - \e[1;34m   OS SCANNERS   \e[0m                                               '
echo   '       4 - \e[1;34m   WIRELESS NETWORKS AUDITING   \e[0m                                  '
echo   '       5 - \e[1;34m   OSINT TOOLS 	\e[0m			      '
echo   '\e[1;31m------------------------------------------------------------- ' 
echo '\e[1;36m H3LL0,' $USER 
echo ' '  
echo '// Greetingz. This script is a gift for my fellow Hackers out there. Happy Hacking! '
echo '[!] Use this script only on your Network '
echo ' '
if [ $(id -u) != 0 ]; then
     echo "> You're not root. You need to restart the script with Sudo privilages"
     # elevate script privileges
fi
echo ' '
read -p 'Pick$:  ' choice 
if [ $choice = '1' ]; then 
clear
echo	'\e[1;31m-------------------------------------------------------------- '
echo	'            _   __                                                       '
echo	'  	   / | / /___ ___  ____ _____     ______________ _____          '
echo	'	  /  |/ / __ `__ \/ __ `/ __ \   / ___/ ___/ __ `/ __ \         '
echo	'	 / /|  / / / / / / /_/ / /_/ /  (__  ) /__/ /_/ / / / /         '
echo	'	/_/ |_/_/ /_/ /_/\__,_/ .___/  /____/\___/\__,_/_/ /_/          '
echo	'                             /_/                                         '
echo	'\e[1;31m-------------------------------------------------------------- ' 
nmap_scann
elif [ $choice = '2' ]; then
clear
echo '\e[1;31m-------------------------------------------------------- '  
echo '           __     __                                       '
echo '	| |     / /__  / /_     ______________ _____  _____      '
echo '	| | /| / / _ \/ __ \   / ___/ ___/ __ `/ __ \/ ___/      '
echo '	| |/ |/ /  __/ /_/ /  (__  ) /__/ /_/ / / / (__  )       '
echo '	|__/|__/\___/_.___/  /____/\___/\__,_/_/ /_/____/        ' 
echo '								'
echo '\e[1;31m------------------------------------------------------ '                                                  
web_scans
elif [ $choice = '3' ]; then
       os_scans
elif [ $choice = '4' ]; then 
       wire_audit
elif [ $choice = '5' ]; then
       osint_tools
fi
