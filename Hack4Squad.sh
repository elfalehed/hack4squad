#!/bin/sh

# Author: Mohamed E.Faleh // @KMx404 >> All contributers are mentioned in the README file 
# Version: V0.1 
# BashV: V4.1+ 
# Happy Hacking // Scanning 
 
nmap_scan1(){
	echo {  Hack4Squad - NmapBasic Scan  } 
	read -p 'Your address/target:$ ' scanaddr
	nmap -sT -A -iL $scanaddr 
}
nmap_scann(){
	clear 
	echo '{  Hack4Squad - NmapScans  }'
	echo '1 - SIMPLE SCAN' 
	echo '2- Return'
	echo ' '
	read -p 'Pick$: ' po 
	if [ $po = '1' ]; then
	       nmap_scan1
        elif [ $po = '2']; then
 	       clear 
	       python3 Hack4Squad.py       
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
echo ''   
sleep 1
echo '' 
echo // Greetingz. This script is a gift for my fellow Hackers out there. Happy Hacking! 
echo ''
read -p 'Pick$:  ' choice 
if [ $choice = '1' ]; then 
       nmap_scann
elif [ $choice = '2' ]; then
       web_scans
elif [ $choice = '3' ]; then
       os_scans
elif [ $choice = '4' ]; then 
       wire_audit
elif [ $choice = '5' ]; then
       osint_tools		
fi
