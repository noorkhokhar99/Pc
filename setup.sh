#!/usr/bin/env bash

# Author = Noor khokhar
# Aim = To create random passwords and protect from hackers
# VERSION = 1.1

# NOTE: THIS TOOL IS ONLY FOR EDUCATIONAL PURPOSE 

clear
echo -ne "Installation Begins ###"
for i in 1 2 3 4 5
do
    echo -ne "#"
    sleep 0.5
done
echo -e "\n"

echo "Checking for system update"
apt update 

echo -e "\n"
sudo apt-get install python3-pip

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sleep 0.5

apt install ./teamviewer_amd64.deb
sleep 0.5


wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -

sleep 0.5

echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
apt update
sleep 0.5


apt install anydesk

#sudo apt-get install xterm
sleep 0.5

sudo apt-get install libportaudio2
sleep 0.5


echo "Checking for python and it's updates"
sleep 0.5
sudo add-apt-repository ppa:deadsnakes/ppa


#apt-get install python -y
sleep 0.5

sudo apt-get update


#apt install python-pip
sudo apt-get install python3.7

sudo apt-get install -y qterminal
sleep 0.5

sudo apt-get install curl
sleep 0.5

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sleep 0.5

sudo python3.7 get-pip.py
sleep 0.5


sleep 0.5
#python -m pip install --upgrade pip

sleep 1.5

sudo apt-get install xserver-xorg-video-dummy
sleep 1.5

sudo apt-get install xserver-xorg-video-vesa
sleep 1.5

apt update
sleep 1.5

apt install xrdp
sleep 1.5

#sudo systemctl enable --now xrdp
sleep 1.5

ufw allow from any to any port 3389 proto tcp
sleep 1.5

echo -e "\n"
sleep 0.5


echo "Checking for Required Python Pakages"
sleep 1
pip install -r requirements.txt

sleep 0.5


echo "Installation Completed"
echo "Now, You can use your tool"



