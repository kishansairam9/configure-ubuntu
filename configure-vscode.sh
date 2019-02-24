#!/usr/bin/env bash

echo "Listing VSCode extensions as configure works only after initial run"
#code --list-extensions # Might be buggy, might not work.

# Install Extensions

while read -r line || [[ -n "$line" ]];do
	code --install-extension $line	
done < VSCode-Config/vscode-extensions

# Change settings.json to preffered settings

cp VSCode-Config/settings.json ~/.config/Code/User/


