RED='\033[0;32m'
NC='\033[0m'

echo "${RED}[*] CTF T00lkit Installer${NC}"
echo "${RED}[*] Setting up Directories${NC}"

cd ~
sudo mkdir toolkit
mkdir ~/toolkit/wordlists

sudo apt-get update
#Networking Tools
echo "${RED}[*] Installing Nmap${NC}"
sudo apt-get install -y nmap
echo "${RED}[*] Installing Tcpdump${NC}"
sudo apt-get install -y tcpdump
echo "${RED}[*] Installing Netcat${NC}"
sudo apt-get install -y netcat
echo "${RED}[*] Installing Openssl${NC}"
sudo apt-get install -y openssl
echo  "${RED}[*] Installing wireshark${NC}"
sudo apt-get install -y wireshark
echo  "${RED}[*] Installing Openvpn${NC}"
sudo apt-get install -y openvpn
echo  "${RED}[*] Installing dnsenum${NC}"
sudo apt-get install -y cpanminus 
cd ~/toolkit 
sudo git clone https://github.com/fwaeytens/dnsenum.git 
cd dnsenum/ 
chmod +x dnsenum.pl 
ln -s ~/toolkit/dnsenum/dnsenum.pl /usr/bin/dnsenum 
cpanm String::Random 
cpanm Net::IP 
cpanm Net::DNS 
cpanm Net::Netmask
# massdns
echo "${RED}[*] Installing massdns${NC}"
sudo apt-get install -y libldns-dev
cd ~/toolkit 
sudo git clone https://github.com/blechschmidt/massdns.git
cd massdns/
make
ln -sf ~/toolkit/massdns/bin/massdns /usr/local/bin/massdns
cpanm XML::Writer

#Stegano

echo "${RED}[*] Installing audacity${NC}"
sudo apt-get install audacity
read -p "Do you want to download Gimp? y/n " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo -e "${RED}[*] Installing Gimp${NC}"
	apt-get install gimp
fi
sudo apt-get install steghide
#Forensics

echo "${RED}[*] Installing BinWalk${NC}"
sudo apt-get install binwalk
echo "${RED}[*] Installing ExifTool${NC}"
sudo apt-get install exiftool
echo "${RED}[*] Installing xxd-hexdump${NC}"
sudo apt-get install xxd

#Reverse

echo "${RED}[*] Installing gdb${NC}"
sudo apt-get install gdb
echo "${RED}[*] Installing radare2${NC}"
sudo apt-get install radare2
echo "${RED}[*] Installing IDA PRO${NC}"
wget  -O ~/toolkit "https://out7.hex-rays.com/files/idafree70_linux.run"
echo "${RED}[*] Installing objdump${NC}"
sudo apt-get install objdump

#Crypto
echo  "${RED}[*] Installing John the Ripper${NC}"
sudo apt-get install john
echo "${RED}[*] Installing Hashpump${NC}"
cd ~/toolkit 
sudo git clone https://github.com/bwall/HashPump.git
sudo apt-get install g++ libssl-dev
cd HashPump
sudo make
sudo make install
echo "${RED}[*] Installing dex2jar${NC}" 
sudo apt-get install dex2jar


echo "${RED}[*] Tidying up${NC}"
clear

echo "${RED}[*] Installation Complete! ${NC}"
echo "${RED}[*] Your tools have been installed in: "$HOME"/toolkit"
