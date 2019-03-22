#!/usr/bin/env bash

# To be run as sudo

snap install vscode --classic
snap install node --channel=11/stable --classic
snap install vagrant --classic
snap install ruby --classic
snap install go --classic
snap install vlc
snap install gimp

# Docker Installation

snap install docker
groupadd docker
usermod -aG $USER
