#!/usr/bin/env bash

# To be run as sudo

apt-get update -y
apt-get upgrade -y
apt-get install git -y

# Power optimizations
apt-get install tlp tlp-rdw -y
apt-get install powertop -y
tlp start
powertop --auto-tune

# Themes & tweaking

apt-get install gnome-tweak-tool -y
apt install gnome-shell-extensions -y
apt-get install chrome-gnome-shell

# Common things

apt-get install snapd -y
apt-get install vim -y
apt-get install fonts-hack-ttf -y # Font needed for VSCode
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb # Google Chrome Installation
dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
# apt-get install variety  -y # Wallpaper Changer for linux
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable  -y
apt-get update -y && apt-get install qbittorrent -y
apt-get install gcc g++ -y

# Java Installation OpenJDK

apt install openjdk-11-jdk -y
echo "JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64/bin/\"" >> /etc/environment

# Virtual Box installation

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
### Ubuntu 18.04 ### 
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
### Ubuntu 18.10 ## # echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian cosmic contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
### Ubuntu 16.04 ### # echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"  | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt-get -y install virtualbox-6.0
