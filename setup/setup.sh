!#/bin/bash

#Written by The Hood, inspired by John Hammond

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

GREEN "Starting setup.sh"
YELLOW "Testing for root:"

# Testing if root...
if [ $UID -ne 0 ]
then
  RED "Not running as root"
	RED "You must run this script as root!" && echo 
	exit
fi

GREEN "Running as root"
echo "
echo "---------------------------------------------------------------------"
GREEN "Written by The Hood"
echo " "
GREEN "Inspired by John Hammonds ignition_key.sh:"
GREEN "-> www.github.com//JohnHammond/ignition_key/blob/master/ignition_key.sh"
echo "---------------------------------------------------------------------"

GREEN "Done beginning setup:"
#---------------------------------------------------------------------
echo " "
GREEN "Changing directory to $PWD"
cd $PWD

GREEN "Creating bin directory"
mkdir ./bin

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

BLUE "Installing terminator..."
sudo apt-get intall -y terminator

BLUE "Installing pip..."
sudo apt-get install -y python-pip

BLUE "Installing openvpn..."
sudo apt-get install -y openvpn

BLUE "Installing nmap..."
sudo apt-get install -y nmap

BLUE "Installing curl..."
sudo apt-get install -y curl

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

BLUE "Installing pip..."
sudo apt-get install -y python-pip

BLUE "Installing python-requests..."
pip install requests

BLUE "Installing Binwalk..."
sudo apt-get install -y binwalk

BLUE "Installing rot13..."
sudo apt-get install -y bsdgames

BLUE "Installing hexedit..."
sudo apt-get install -y hexedit

BLUE "Installing Python pwntools..."
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
wget "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/hash-identifier/Hash_ID_v1.1.py" -O 

