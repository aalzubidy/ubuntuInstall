#!/bin/bash

echo "Starting install script"

#Flashback to Classic Ubuntu
echo "Flashback to Classic Ubuntu"
sudo apt-get update
sudo apt-get install gnome-session-flashback

#Disable Recenet Documents
echo "Disable Recenet Documents"
sudo chattr +i ~/.local/share/recently-used.xbel
#Enable using sudo chattr -i ~/.local/share/recently-used.xbel

#Install Flux
echo "Flux"
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui

# Enable html5 videos
echo "HTML5"
sudo apt-get install ubuntu-restricted-extras

#Audio manager
echo "Audio Manager"
sudo apt-get install pulseaudio pavucontrol

#UI Root
echo "UI Root"
sudo add-apt-repository ppa:noobslab/apps
sudo apt-get install
sudo apt-get install nautilus-admin

#VPN Secure
echo "VPN Secure"
sudo wget https://www.vpnsecure.me/files/install -O install && sudo bash install

#Gparted
echo "GParted"
sudo apt-get install gparted

#VLC
echo "VLC"
sudo snap install vlc

#gimp
echo "GIMP"
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get install gimp

#Font scale
# gsettings set org.gnome.desktop.interface text-scaling-factor 1.2

#UI Tweaks
echo "UI Tweaks"
sudo apt install gnome-tweak-tool

#Spotify
echo "Spotify"
sudo snap install spotify

#Disable screen rotation
echo "Disable Screen Rotation"
gsettings set org.gnome.settings-daemon.peripherals.touchscreen orientation-lock true
gsettings set org.gnome.settings-daemon.plugins.orientation active false


#Brave
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
sudo apt update
sudo apt install brave-browser

#Git
apt-get install git-core

#NodeJS
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Done!"