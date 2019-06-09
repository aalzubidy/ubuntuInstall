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

echo "Done!"