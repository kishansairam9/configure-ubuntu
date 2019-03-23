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
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt-get update
sudo apt-get -y install virtualbox-6.0 -y
