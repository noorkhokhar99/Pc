# ubuntu setting  & Pc ready

````
sudo apt-get update
````

# update_version

````
sudo apt-get install git
````

# donwnload report:

````
git clone https://github.com/noorkhokhar99/Pc.git
````

# check gitub report:

ls

````
cd Pc
````

# Installation

# Download the "setup.sh" file and follow the commands:


````
chmod +x setup.sh
````

````
./setup.sh
````


# Add Fake Display when No Monitor is Plugged In

````
sudo nano /usr/share/X11/xorg.conf.d/xorg.conf
````

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
sudo python3.7 app.py

````


# liberay install 

````
sudo python3.7 -m pip install flask


````


````
sudo pip install awsiotsdk
````

# static ip mini pc

````
sudo nano /etc/netplan/01-netcfg.yaml
````


````

network:
  version: 2
  ethernets:
    eno1:
      dhcp4: no
      addresses:
        - 192.168.0.50/24
      gateway4: 192.168.0.1
      nameservers:
        addresses:
          - 8.8.8.8
          - 8.8.4.4


````



````
sudo netplan apply
````




# Add Fake Display when No Monitor is Plugged In new 


````
sudo apt update

````

````
sudo apt install xserver-xorg-video-dummy

````





````
Section "Device"
    Identifier  "Configured Video Device"
    Driver      "dummy"
    VideoRam    256000
EndSection

Section "Monitor"
    Identifier  "Configured Monitor"
    HorizSync   31.5-48.5
    VertRefresh 50-70
    Modeline    "1920x1080" 148.50 1920 2008 2052 2200 1080 1084 1089 1125 -hsync +vsync
EndSection

Section "Screen"
    Identifier  "Default Screen"
    Monitor     "Configured Monitor"
    Device      "Configured Video Device"
    DefaultDepth 24
    SubSection "Display"
        Depth    24
        Modes    "1920x1080"
    EndSubSection
EndSection


````




