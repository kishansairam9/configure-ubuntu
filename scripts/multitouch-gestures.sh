#!/usr/bin/env bash

# To be run as sudo

# Reference https://askubuntu.com/a/1044184 && https://github.com/iberianpig/fusuma

# Must have ruby installed, run from_snap.sh before this
# After running script, and trying to run fusuma, if fusuma not found is comming as error, try installing ruby from apt

apt-get install libinput-tools -y 
apt-get install xdotool -y
gem install fusuma
gpasswd -a $USER input
mkdir -p ~/.config/fusuma

# adding to startup # if this fails, try normally

mkdir -p ~/.config/autostart
cat > ~/.config/autostart/fusuma-startup.desktop << EOF
[Desktop Entry]
Name=Fusuma-Gestures
Exec=fusuma -d
Type=Application
EOF

# Fusuma Config

cat > ~/.config/fusuma/config.yml << EOF
swipe:
  3: 
    left: 
      command: 'xdotool key alt+Right'
    right: 
      command: 'xdotool key alt+Left'
    up: 
      command: 'xdotool key super'
    down: 
      command: 'xdotool key super'
  4:
    left: 
      command: 'xdotool key super+a'
    right: 
      command: 'xdotool key super+a'
    up: 
      command: 'xdotool key ctrl+alt+Down'
    down: 
      command: 'xdotool key ctrl+alt+Up'
pinch:
  in:
    command: 'xdotool key ctrl+plus'
  out:
     command: 'xdotool key ctrl+minus'

threshold:
  swipe: 0.4
  pinch: 0.4

interval:
  swipe: 0.8
  pinch: 0.1
EOF

# Multi-touch Gesture | Action |
# 3 Fingers - Left | Go Next on Browser |
# 3 Fingers - Right | Go Back on Browser |
# 3 Fingers - Up | Show all Windows|
# 3 Fingers - Down | Close Overview / Apps |
# 4 Fingers - Left | Show Apps |
# 4 Fingers - Right | Show Apps |
# 4 Fingers - Up | Next Desktop|
# 4 Fingers - Down | Previous Desktop| 
