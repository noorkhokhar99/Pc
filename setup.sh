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

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sleep 0.5

apt install ./teamviewer_amd64.deb
sleep 0.5

apt-get install xterm


echo "Checking for python and it's updates"
sleep 0.5
apt-get install python -y
sleep 0.5
apt install python-pip
sleep 0.5
python -m pip install --upgrade pip

echo -e "\n"
sleep 0.5
echo "Checking for Required Python Pakages"
sleep 1
pip install -r requirements.txt

sleep 0.5

echo "Installation Completed"
echo "Now, You can use your tool"
