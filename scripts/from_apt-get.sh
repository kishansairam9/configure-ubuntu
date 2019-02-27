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
# apt-get install variety  -y # Wallpaper Changer for linux
add-apt-repository ppa:qbittorrent-team/qbittorrent-stable  -y
apt-get update -y && apt-get install qbittorrent -y
apt-get install gcc g++ -y
apt-get install clang clang-format -y

# Java Installation OpenJDK

apt install openjdk-11-jdk -y
echo "JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64/bin/\"" >> /etc/environment

# Virtual Box installation

apt install virtualbox -y
apt install virtualbox-qt -y

# Vagrant installation # Using Unofficial Repo

bash -c 'echo deb https://vagrant-deb.linestarve.com/ any main > /etc/apt/sources.list.d/wolfgang42-vagrant.list'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key AD319E0F7CFFA38B4D9F6E55CE3F3DE92099F7A4 -y
apt-get update -y
apt-get install vagrant -y
rm -rf /etc/apt/sources.list.d/wolfgang42-vagrant.list*
apt-get update -y

# Writing App

add-apt-repository ppa:wereturtle/ppa
apt-get update
apt-get install ghostwriter
