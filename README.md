# Ubuntu PC Setup Guide

This guide walks you through the steps required to set up your PC for development and configuration tasks using Ubuntu.

## System Update

1. **Update the system:**
   ```bash
   sudo apt-get update
   ```

2. **Install Git:**
   ```bash
   sudo apt-get install git
   ```

## Download the Repository

1. **Clone the repository:**
   ```bash
   git clone https://github.com/noorkhokhar99/Pc.git
   ```

2. **Navigate to the repository folder:**
   ```bash
   cd Pc
   ```

## Installation

1. **Download and execute the setup script:**
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

## Add Fake Display When No Monitor is Plugged In

1. **Create or edit the configuration file:**
   ```bash
   sudo nano /usr/share/X11/xorg.conf.d/xorg.conf
   ```

2. **Add the following content:**
   ```
   Section "Device"
       Identifier  "Configured Video Device"
       Driver      "dummy"
   EndSection

   Section "Monitor"
       Identifier  "Configured Monitor"
       HorizSync   31.5-48.5
       VertRefresh 50-70
   EndSection

   Section "Screen"
       Identifier  "Default Screen"
       Monitor     "Configured Monitor"
       Device      "Configured Video Device"
       DefaultDepth 24
       SubSection "Display"
           Depth    24
           Modes    "1024x800"
       EndSubSection
   EndSection
   ```

## Automate Script Execution in `.bashrc`

1. **Edit the `.bashrc` file:**
   ```bash
   sudo nano ~/.bashrc
   ```

## Python Application Setup

1. **Run the Python application:**
   ```bash
   sudo python3.9 app.py
   ```

2. **Install required libraries:**
   ```bash
   sudo python3.9 -m pip install flask
   sudo apt-get install python3-pip
   sudo pip install awsiotsdk
   ```

## Configure Static IP for Mini PC

1. **Edit the netplan configuration:**
   ```bash
   sudo nano /etc/netplan/01-netcfg.yaml
   ```

2. **Add the following content:**
   ```
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
   ```

3. **Apply the configuration:**
   ```bash
   sudo netplan apply
   ```

## Add a New Fake Display

1. **Install the dummy video driver:**
   ```bash
   sudo apt update
   sudo apt install xserver-xorg-video-dummy
   ```

2. **Create or edit the configuration file:**
   ```bash
   sudo nano /usr/share/X11/xorg.conf.d/xorg.conf
   ```

3. **Add the following content:**
   ```
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
   ```

## Logs Management

1. **Navigate to the logs folder:**
   ```bash
   cd /greengrass/ggc/var/log/system
   ```

2. **View logs in real-time:**
   ```bash
   tail -f localwatch/localwatch.log *.log
   ```

## AWS Greengrass Management

1. **Control Greengrass services:**
   ```bash
   sudo systemctl start greengrass
   sudo systemctl enable greengrass
   sudo systemctl status greengrass
   ```

## Remove Sudo Password for a User

1. **Edit the sudoers file:**
   ```bash
   sudo visudo
   ```

2. **Add the following line at the end, replacing `username` with your actual username:**
   ```
   username ALL=(ALL) NOPASSWD: ALL
   ```

## Fix Port Listener Issues

1. **Check the firewall status:**
   ```bash
   sudo ufw status
   ```

2. **Allow a specific port (e.g., 23):**
   ```bash
   sudo ufw allow 23
   ```

