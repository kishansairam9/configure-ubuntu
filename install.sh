#!/usr/bin/env bash

echo "Installing using apt-get"
chmod x ./scripts/from_apt-get.sh
./scripts/from_apt-get.sh
clear
echo "Installing using snap"
chmod x ./scripts/from_snap.sh
./scripts/from_snap.sh
clear
echo "Installing Multi-Touch Gestures"
chmod +x ./scripts/multitouch-gestures.sh
./scripts/multitouch-gestures.sh
clear
#echo "Installing OneDrive"
#chmod u+x ./scripts/onedrive-install.sh
#./scripts/onedrive-install.sh
#clear
echo "To be Done"
chmod +x ./scripts/to-be-done.sh
./scripts/to-be-done.sh
