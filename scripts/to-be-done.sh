#!/usr/bin/env bash

#echo "->) Themes are copied, Enable using Gnome-Tweak-Tools"
#echo
#echo "->) Run these commands to enable OneDrive on start:"
#echo "  	systemctl --user enable onedrive"
#echo "  	systemctl --user start onedrive"
#echo
#echo "   Visit https://github.com/skilion/onedrive to know about onedrive client"
echo
echo "->) Visit https://extensions.gnome.org/extension/1162/emoji-selector/ and install emoji extension"
echo
echo "->) Gestures are installed and should work perfectly fine once you restart/ logout & login back."
echo
echo "The gestures configuration is"
tail scripts/multitouch-gestures.sh
echo
echo "If you logout and login and still gestures did not work, run fusuma -d, check if gestures are working. If you get touchpad not found run 'sudo gpasswd -a $USER input'"
echo
echo "->) To import VSCode Configurations, run VSCode once wait till it opens and then close it. Then run configure-vscode.sh from repo's directory to import VSCode Settings"

echo "Aliasing atom to vim and vi now"
echo "alias vim='atom'" >> ~/.bashrc
echo "alias vi='atom'" >> ~/.bashrc
echo "Wakatime cli is installed configure it by using wakatime -api yourApiKeyHere and for more details visit https://www.npmjs.com/package/wakatimecli"
