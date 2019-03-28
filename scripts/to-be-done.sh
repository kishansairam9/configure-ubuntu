#!/usr/bin/env bash

#echo "->) Themes are copied, Enable using Gnome-Tweak-Tools"
#echo
#echo "->) Run these commands to enable OneDrive on start:"
#echo "  	systemctl --user enable onedrive"
#echo "  	systemctl --user start onedrive"
#echo
#echo "   Visit https://github.com/skilion/onedrive to know about onedrive client"
echo
echo "->) Gestures are installed and should work perfectly fine once you restart/ logout & login back."
echo
echo "The gestures configuration is"
tail scripts/multitouch-gestures.sh
echo
echo "If you logout and login and still gestures did not work, run fusuma -d, check if gestures are working. If you get touchpad not found run 'sudo gpasswd -a $USER input'"
echo
echo "->) To import VSCode Configurations, run VSCode once wait till it opens and then close it. Then run configure-vscode.sh from repo's directory to import VSCode Settings"

echo "Aliasing code to vim and vi now and also gdb -q to gdb, gcc/g++ -w to gcc/g++"
echo "alias gcc='gcc -w'" >> ~/.bashrc
echo "alias g++='g++ -w'" >> ~/.bashrc
echo "alias gdb='gdb -q'" >> ~/.bashrc
echo "Install vagrant by downloading latest release from their webiste https://www.vagrantup.com/downloads.html"
echo "Run sudo tlp start , sudo powertop , sudo powertop --auto-tune for power optimizations"
tlp start
powertop --auto-tune
#echo "Removing ubuntu-dock restart to see effect"
#apt remove gnome-shell-extension-ubuntu-dock
