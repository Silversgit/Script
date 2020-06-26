#!/bin/bash
# Bug Hunter 101 Tools
# Developed By SecFathy

# Check Root Privileges
printf "\x1b[32m ---> [ Update Your Termux ]\\x1b[0m\n";
apt-get update
apt-get upgrade

printf "\x1b[32m ---> [ Install Requirements  ]\\x1b[0m\n";
sudo apt-get install -y git
apt-get install python-pip
apt-get install -y python3-pip
apt-get install -y libcurl4-openssl-dev
apt-get install -y libssl-dev
apt-get install -y jq
apt-get install -y ruby-full
apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev

printf "\x1b[32m ---> [ Install SSL Testing Tools   ]\\x1b[0m\n";

git clone https://github.com/hahwul/a2sv.git
cd a2sv
pip install -r requirements.txt
cd ..

printf "\x1b[32m ---> [ Install Port Scan   ]\\x1b[0m\n";

apt-get install nmap
git clone https://github.com/robertdavidgraham/masscan


printf "\x1b[32m ---> [ Install DNS Discovery & Sub-domain   ]\\x1b[0m\n";

git clone https://github.com/aboul3la/Sublist3r.git
git clone https://github.com/guelfoweb/knock.git


printf "\x1b[32m ---> [ Subdomain Takeover   ]\\x1b[0m\n";

git clone https://github.com/haccer/subjack.git
git clone https://github.com/michenriksen/aquatone.git


printf "\x1b[32m ---> [ Discovery Directory   ]\\x1b[0m\n";

git clone https://github.com/maurosoria/dirsearch.git

printf "\x1b[32m ---> [ Fingerprinting Tools    ]\\x1b[0m\n";

git clone https://github.com/urbanadventurer/whatweb.git
git clone https://github.com/EnableSecurity/wafw00f.git
git clone https://github.com/daudmalik06/ReconCat.git

printf "\x1b[32m ---> [ Web Application vulnerability Scanner   ]\\x1b[0m\n";

git clone https://github.com/sqlmapproject/sqlmap.git
git clone https://github.com/epinna/tplmap.git
git clone https://github.com/D35m0nd142/LFISuite.git
git clone https://github.com/insp3ctre/race-the-web.git
git clone https://github.com/wpscanteam/wpscan.git
git clone https://github.com/rezasp/joomscan.git
git clone https://github.com/Dionach/CMSmap.git
git clone https://github.com/internetwache/GitTools.git
git clone https://github.com/epinna/weevely3.git
