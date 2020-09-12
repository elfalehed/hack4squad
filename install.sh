#!/bin/bash

# There should be a command to install each required tool

clear
mkdir tools
cd tools
echo -e "\e[33m [installing the needed requirements] "
echo ' '
echo -e "\e[33m [Airgeddon]"
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git &> /dev/null
echo "  Installation Completed"
echo ' '
echo -e "\e[33m [WAScan]"
git clone https://github.com/m4ll0k/WAScan.git wascan &> /dev/null
cd wascan
pip install BeautifulSoup &> /dev/null
cd ..
echo ' '
echo "  Installation Completed"
echo ''
echo -e "\e[33m [Scant3r]"
git clone https://github.com/knassar702/scant3r.git &> /dev/null
cd scant3r
pip3 install -r requirements.txt &> /dev/null
cd ..
echo ''
echo "  Installation Completed"
echo ''
echo -e "\e[33m [Lynis]"
git clone https://github.com/CISOfy/lynis.git &> /dev/null
echo '  Installation Completed'
echo ' '
## OSINT TOOLS INSTALLATION
## OSINT Framework resides here cause I don't get it from github
echo -e "\e[33m [Photon]"
git clone https://github.com/s0md3v/Photon &> /dev/null
cd Photon
pip3 install -r requirements.txt &> /dev/null
cd ..
echo '  Installation Completed'
echo ' '
echo -e "\e[33m [Sherlock]"
git clone https://github.com/sherlock-project/sherlock &> /dev/null
cd sherlock
pip3 install -r requirements.txt &> /dev/null
cd ..
echo '  Installation Completed'
echo ' '
echo -e "\e[33m [Dirsearch]"
git clone https://github.com/maurosoria/dirsearch &> /dev/null
echo '  Installation Completed'
clear
cd ..
chmod +x Hack4Squad.sh
./Hack4Squad.sh

