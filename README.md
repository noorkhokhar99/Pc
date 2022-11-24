# ubuntu setting  & Pc ready

sudo apt-get update

# update_version

sudo apt-get install git

# donwnload report:

git clone https://github.com/noorkhokhar99/Pc.git

# check gitub report:

ls

cd Pc


# Installation

# Download the "setup.sh" file and follow the commands:



chmod +x setup.sh

./setup.sh



# Add Fake Display when No Monitor is Plugged In


sudo nano /usr/share/X11/xorg.conf.d/xorg.conf

````
Section "Device"
    Identifier  "Configured Video Device"
    Driver      "dummy"
EndSection

Section "Monitor"
    Identifier  "Configured Monitor"
    HorizSync 31.5-48.5
    VertRefresh 50-70
EndSection

Section "Screen"
    Identifier  "Default Screen"
    Monitor     "Configured Monitor"
    Device      "Configured Video Device"
    DefaultDepth 24
    SubSection "Display"
    Depth 24
    Modes "1024x800"
    EndSubSection
EndSection


````






# Auto script in bashrc 

````
sudo nano .bashrc

````


# Put file python
````
python3.7 name.py

````
