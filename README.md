# Ubuntu Configure Scripts <!-- omit in toc -->

- ~~These Scripts configure Ubuntu to my personalized preferences.~~ Contains onceup on a time installation scripts, I switched to macOS.
- These scripts are hardcoded to work without any need of intervention (except for some things, [this](./scripts/to-be-done.sh) script tells you those)

## Table of Contents <!-- omit in toc -->

- [Installation](#installation)
- [Store VSCode's Current Settings into Repo](#store-vscodes-current-settings-into-repo)
- [Getting existing Extensions & Settings of VSCode into repo](#getting-existing-extensions--settings-of-vscode-into-repo)
  - [Linux](#linux)
  - [Windows / Mac / Linux](#windows--mac--linux)
- [To Do](#to-do)

## Installation

1. Clone the repo and `cd` into it
2. Make install.sh executable `chmod u+x ./install.sh`
3. Run it as sudo `sudo ./install.sh`

```bash
git clone https://github.com/kishansairam9/ubuntu-setup-scripts.git
# For clone using ssh
# git clone git@github.com:kishansairam9/ubuntu-setup-scripts.git
cd ubuntu-setup-scripts
chmod u+x ./install.sh
sudo ./install.sh
```

## Store VSCode's Current Settings into Repo

> To make new settings stay with you, fork the repo and then commit changes after running this script in your forked repo

1. `cd` into the repo after cloning
2. Make store-vscode-config.sh executable `chmod u+x ./store-vscode-config.sh`
3. Run store-vscode-config.sh `./store-vscode-config.sh`

```bash
# If you havent cloned repo then uncomment required lines
# git clone https://github.com/kishansairam9/ubuntu-setup-scripts.git
# For clone using ssh
# git clone git@github.com:kishansairam9/ubuntu-setup-scripts.git
# cd ubuntu-setup-scripts
chmod u+x ./store-vscode-config.sh
./store-vscode-config.sh
```

## Getting existing Extensions & Settings of VSCode into repo

> To make new settings stay with you, fork the repo and then commit changes after doing  in your forked repo

### Linux

[Store VSCode's Current Settings](#store-vscodes-current-settings-into-repo) Script can also be using to get existing Extensions & Settings. Alternate way of doing it is given below.

### Windows / Mac / Linux

1. Extensions : Run `code --list-extensions` in terminal (Mac) / CMD (Win) and overwrite contents of [vscode-extensions](./VSCode-Config/vscode-extensions.txt) with the output you get by running that command.
2. Open VSCode and go to Settings ( Ctrl + , ) and Click the Icon { } on top right corner. Copy all the contents under USER SETTINGS and replace the contents of [settings](./VSCode-Config/settings.json) file VSCode Config Folder with copied contents.

## To Do

- Add installation by downloading debian package from github repo's releases
- Add script to download Vagrant from Official site, not the unofficial PPA (if possible)
- Use the official PPA mentioned on VirtualBox site instead of using the apt's virtualbox, as it is mostly outdated and it is possible to get updates using official PPA
- Add installation of Pandoc
