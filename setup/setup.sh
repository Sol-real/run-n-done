#!/bin/bash

#Written by The Hood, inspired by John Hammond

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "${RED}${1}${NC}"
}
function GREEN(){
	echo -e "${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "${BLUE}${1}${NC}"
}

GREEN "[+] Starting setup.sh"
YELLOW "[O] Testing for root:"

#Testing for root folder
if [ $UID -ne 0 ]
then
  	RED "[-] Not running as root" 
	exit
fi
GREEN "[+] Running as root"

# Testing if git folder exits and you are running the programm in it
if [ "$PWD" != "$HOME/git/run-n-done/setup" ]
then
  	RED "[-] Please run this programm from $HOME/git/run-n-done/setup"
	exit
fi
GREEN "[+] Running in git folder"

echo " "
echo "###########################################################################"
echo "#     ________     __    __    __    __    __    __    __    __           #"
echo "#    |   __   |   |  |  |  |  |  \  |  |  |  |  |  \  |  |  |  |          #"
echo "#    |  |__|  /   |  |  |  |  |   \ |  |  |__|  |   \ |  |  |__|          #"               
echo "#    |   __   \   |  |  |  |  |    \|  |        |    \|  |                #"
echo "#    |   | \   |  |  |__|  |  |  |\    |        |  |\    |                #" 
echo "#    |___|  \__|  |________|  |__| \___|        |__| \___|                #"
echo "#                                                                         #"
echo "#                  _______      _______    __    __    _______            #"
echo "#                 |   _   \    |   _   |  |  \  |  |  |   ____|           #"
echo "#                 |  | \   \   |  | |  |  |   \ |  |  |  |__              #" 
echo "#                 |  |  |   |  |  | |  |  |    \|  |  |   __|             #"
echo "#                 |  |_/   /   |  |_|  |  |  |\    |  |  |____            #"
echo "#                 |_______/    |_______|  |__| \___|  |_______|           #" 
echo "#                                                                         #"
echo "###########################################################################"
echo " "
GREEN "##########################################################################"
GREEN "#                                                                        #"
GREEN "#  Written by The Hood                                                   #"
GREEN "#                                                                        #"
GREEN "#  Inspired by John Hammonds ignition_key.sh:                            #"
GREEN "#  -> github.com/JohnHammond/ignition_key/blob/master/ignition_key.sh    #"
GREEN "#                                                                        #"
GREEN "##########################################################################"
echo " "

#---------------------------------------------------------------------
RED "Start setup (1) , Quit setup (0):"
read input

if [ $input == 0 ]
then
  RED "Quitting Setup"
  exit
elif [ $input == 1 ]
then
  GREEN "Beginning setup:"
else
  RED "Invalid input quitting setup"
  exit
fi

#-------------------------------------------

GREEN "Done. Beginning setup:"

GREEN "Creating bin directory in $HOME"
mkdir ~/bin

BLUE "Updating repositories..."
sudo apt-get update 

BLUE "Installing git..."
sudo apt-get install -y git

BLUE "Installing build-essentials and libssl-dev..."
sudo apt-get install -y build-essentials libssl-dev

BLUE "Installing 7zip..."
sudo apt-get install -y p7zip-full

BLUE "Installing aircrack-ng..."
sudo apt-get install -y aircrack-ng

BLUE "Installing openvpn..."
sudo apt-get install -y openvpn

BLUE "Installing nmap..."
sudo apt-get install -y nmap

BLUE "Installing curl..."
sudo apt-get install -y curl

BLUE "Installing chntpw..."
sudo apt-get install chntpw

BLUE "Installing net-tools"
sudo apt-get install -y net-tools

BLUE "Installing exiftool..."
sudo apt-get install -y exiftool

BLUE "Installing Wireshark..."
sudo apt-get install -y wireshark

BLUE "Installing Atom..."
wget "https://atom.io/download/deb" -O atom.deb
dpkg -i atom.deb
rm atom.deb

BLUE "Installing VSCode..."
wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb
dpkg -i vscode.deb
rm vscode.deb

BLUE "Installing python..."
sudo apt-get install python

BLUE "Installing pip..."
sudo apt-get install -y python-pip

BLUE "Installing python-requests..."
sudo pip install requests

BLUE "Installing binwalk..."
sudo apt-get install -y binwalk

BLUE "Installing rot13..."
sudo apt-get install -y bsdgames

BLUE "Installing hexedit..."
sudo apt-get install -y hexedit

BLUE "Installing python pwntools..."
sudo pip install pwntools

BLUE "Installing nikto..."
sudo apt-get install -y nikto

BLUE "Installing pdfcrack..."
sudo apt-get install -y pdfcrack

BLUE "Installing fcrackzip..."
sudo apt-get install -y fcrackzip

BLUE "Installing sshpass..."
sudo apt-get install -y sshpass

BLUE "Installing tcpflow..."
sudo ap-get install -y tcpflow

BLUE "Installing dos2unix..."
sudo apt-get install -y libcompress-raw-lzma-perl 

BLUE "Installing radare2..."
sudo apt-get install -y radare2

BLUE "Installing hash identifier..."
sudo cp $HOME/git/run-n-done/dependencies/hash_id ~/bin

BLUE "Installing John the ripper..."
sudo apt-get install -y john

BLUE "Installing hashcat..."
sudo apt-get install -y hashcat

BLUE "Installing vim..."
sudo apt-get install -y vim

BLUE "Fixing any broken files or dependencies..."
sudo apt-get -f -y install

GREEN "Finished setup! [Press enter to close]"
read anykey

