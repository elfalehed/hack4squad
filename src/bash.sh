#!/bin/sh

# Author: Mohamed E.Faleh // @KMx404 >> All contributers are mentioned in the README file 
# Version: V0.1 
# BashV: V4.1+ 
 

nmap_scan(){
	read -p 'Your address/target:$ ' scanaddr
	nmap -sT -A $scanaddr 
} 





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
echo   '       4-  \e[1;34m   WIRELESS NETWORKS AUDITING                                     '
echo   '\e[1;31m------------------------------------------------------------- '
echo ' '
echo '\e[1;35m Hello,' $USER 
echo ''
echo '' 
read -p 'Pick$: ' choice 
if [ $choice == '1' ] 
then 
	echo hello
	nmap_scan()
fi


