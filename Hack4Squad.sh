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
    echo ' '
    echo 'Example: '
    echo 'Your target:$ scanme.nmap.org'
    echo ' '
    read -p 'Your target:$ ' scansite
    nmap -sS -O $scansite
}

nmap_scan2(){
    echo '################# Hack4Squad - NmapBasic Address Scan  #################'
    read -p 'Your address:$ ' scanaddress
    nmap -sS $scanaddress
}
nmap_scan3(){
    echo '################# Hack4Squad - NmapBasic OS Scan #################'
    nmap -A -O 192.168.0.1
}
nmap_scann(){
    echo ' '
    echo '#################  Hack4Squad - NmapScans  #################'
    echo '1 - SCAN A WEBSITE'
    echo '2 - SCAN AN ADDRESS'
    echo '3 - SCAN AN OS'
    echo '4 - EXIT'
    echo ' '
    read -p 'Pick$: ' po
    if [ $po = '1' ]; then
        nmap_scan1
        elif [ $po = '2' ]; then
        nmap_scan2
        elif [ $po = '3' ]; then
        nmap_scan3
        elif [ $po = '4']; then
        exit
    fi
}
scant3r_normal_scan(){
    echo ' '
    echo '################# Hack4Squad - Webscans > SCANT3R > NORMAL SCAN'
    echo ' '
    python3 SCANT3R_V2.py
}
scant3r(){
    echo ' '
    echo '################# Hack4Squad - Webscans > SCANT3R '
    echo '1 - NORMAL SCAN'
    echo '2 - SCAN WITH ADDED MODULE'
    echo '3 - WITH RANDOM USER-AGENTS'
    echo ' '
    read -p 'pick:$ ' poo
    if [ $poo = '1' ]; then
        scant3r_normal_scan
        elif [ $poo = '2' ]; then
        scant3r_added_module
        elif [ $poo = '3' ]; then
        scant3r_random_user_agents
    fi
}
web_scans(){
    echo ''
    echo '################# Hack4Squad - Webscans #################'
    echo '1 - SCANT3R '
    echo '2 - DIRSEARCH'
    echo '3 - WASCAN'
    read -p 'pick$: ' poo
    if [ $poo = '1' ]; then
        clear
        scant3r
        elif [ $poo = '2' ]; then
        clear
        dirsearchMenu
    fi
}
wire_audit(){
    echo ' '
    echo '################# Hack4Squad - Wireless auditing'
    echo '1 - Airgeddon'
    echo ' '
    read -p 'pick:$ ' pa
    if [ $pa = '1' ]; then
        clear
        cd airgeddon
        chmod +x airgeddon.sh
        ./airgeddon.sh
    fi
}
os_scans(){
    echo ' '
    echo '################# Hack4Squad - OS scans ##################'
    echo '1 - Lynis'
    echo ' '
    read -p 'pick:$ ' po
    if [ $po = '1' ]; then
        clear
        cd lynis
        ./lynis audit system
    fi
}

osint_tools ()
{
	clear
    echo ' '
    echo '#################  Hack4Squad - OSINT  #################'
    echo '1 - PHOTON'
    echo '2 - '
    echo '3 - '
    echo '4 - EXIT'
    echo ' '
    read -p 'pick:$ ' po
    if [ $po = '1' ]; then
        clear
        photonMenu
    fi
}

## PHOTON MODULES

photonMenu ()
{
	clear
    echo ' '
    echo '################# Hack4Squad - OSINT > PHOTON '
    echo '1 - NORMAL SCAN'
    echo '2 - ADVANCED SCAN'
    echo '3 - RETURN'
    echo ' '
    read -p 'pick:$ ' poo
    if [ $po = '1' ]; then
        clear
        photonSimpleScan
        elif [$po ='2'] ; then
        clear
        photonAdvancedScan
        elif [ $poo = '3' ] ; then
        clear
        os_scans
    fi
    
    
}

photonSimpleScan ()
{
    echo -n 'Enter Your URL: '
    read url
    photon -u $url
    
}

photonAdvancedScan ()
{
    echo -e 'Enter Your URL: '
    read url
    python photon.py -u $url --wayback --keys --dns -o output
    
}

#################################################################

## DIRSEACH MODULES
dirsearchMenu ()
{
    echo ' '
    echo '################# Hack4Squad - Webscans > DIRSEARCH '
    echo '1 - DEFAULT SCAN'
    echo '2 - ADVANCED SCAN'
    echo '3 - RETURN'
    echo ' '
    read -p 'pick:$ ' poo
    if [ $poo = '1' ]; then
        clear
        dirsearchDefaultScan
        elif [ $poo = '2' ]; then
        clear
        dirsearchAdvancedScan
        elif [ $poo = '3' ]; then
        clear
        web_scans
    fi
    
    
}

dirsearchDefaultScan ()
{
    echo -n "Enter Your URL: "
    read url
    dirsearch -u $url -e *
}

dirsearchAdvancedScan ()
{
    echo -n "Enter Your URL: "
    read url
    echo -n 'Enter your wordlist path '
    read wordlist
    echo -n 'Enter the number of Threads: '
    read th
    dirsearch -u $url -e *  -w $wordlist -t $th --random-agents
    
}

###################################################################

wascanSimpleScan ()
{
    echo -n "Enter Your URL: "
    read url
    echo "LIST OF LEVELS: "
    echo "
	      0 :     Fingerprint (server,waf,cms,...)
          1 :     Attacks (sql,ldap injection,...)
          2 :     Audit (phpinfo,openredirect,...)
          3 :     Bruteforce (dir,file,backup,...)
          4 :     Disclosure (emails,password,...)
          5 :     Full scan (audit,attacks,brute,...)
    "
    echo -n 'Enter the level: '
    read lev
    cd wascan
    python wascan.py -u $url -s $lev
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
echo   '       5 - \e[1;34m   OSINT TOOLS 	\e[0m					'
echo   '       6 - \e[1;34m   CONTACT THE CODER \e[0m									'
echo   '\e[1;31m------------------------------------------------------------- ' 
echo '\e[1;36m [$] H3LL0,' $USER
echo ' '
echo '	 [!] Greetingz. This script is a gift for my fellow Hackers out there. Happy Hacking! '
echo ' '
echo '         [~] Use this script only on your Network '
echo ' '
if [ $(id -u) != 0 ]; then
    echo "> You're not root. You need to restart the script with Sudo privilages"
    # elevate script privileges
fi
echo ' '
read -p 'Pick$: ' choice
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
    clear
    echo '\e[1;31m-------------------------------------------------------- '
    echo ' 	   ___  ____                           			   '
    echo '  	 / _ \/ ___|   ___  ___ __ _ _ __  ___			  '
    echo '	| | | \___ \  / __|/ __/ _` |  _ \/ __|				 '
    echo '	| |_| |___) | \__ \ (_| (_| | | | \__ \ 			'
    echo '	 \___/|____/  |___/\___\__,_|_| |_|___/ 			'
    echo ' '
    echo '\e[1;31m------------------------------------------------------ '
    os_scans
    elif [ $choice = '4' ]; then
    echo '\e[1;31m---------------------------------------------------------------------------------- '
    echo ' 	          _          _                                 _ _ _   _          	'
    echo '	__      _(_)_ __ ___| | ___  ___ ___    __ _ _   _  __| (_) |_(_)_ __   __ _  '
    echo ' 	\ \ /\ / / |  __/ _ \ |/ _ \/ __/ __|  / _` | | | |/ _` | | __| |  _ \ / _` | '
    echo ' 	 \ V  V /| | | |  __/ |  __/\__ \__ \ | (_| | |_| | (_| | | |_| | | | | (_| | '
    echo ' 	  \_/\_/ |_|_|  \___|_|\___||___/___/  \__,_|\__,_|\__,_|_|\__|_|_| |_|\__, | '
    echo ' 	                                                                       |___/  '
    echo ' '
    echo '\e[1;31m---------------------------------------------------------------------------------- '
    wire_audit
    elif [ $choice = '5' ]; then
    osint_tools
    elif [ $choice = '6' ]; then
    firefox "https://linktr.ee/KMx404"
fi