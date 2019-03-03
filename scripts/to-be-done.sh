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
echo "alias g++='gcc -w'" >> ~/.bashrc
echo "alias gdb='gdb -q'" >> ~/.bashrc
echo "alias vim='code'" >> ~/.bashrc
echo "alias vi='code'" >> ~/.bashrc

echo "Wakatime cli is installed configure it by using wakatime -api yourApiKeyHere and for more details visit https://www.npmjs.com/package/wakatimecli"

echo "Install Microsoft Corefonts by accepting the liscence and run 'install-ms-fonts.sh' as sudo"
