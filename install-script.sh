#!/bin/bash

##
# update the system pop OS
##
sudo apt update -y

echo "install gnome-tweaks"
sudo apt install gnome-tweaks

echo "Installing chromium web browser"
sudo apt install chromium-browser

echo "VS code installation for debian based distro"
###
# (script src) https://code.visualstudio.com/docs/setup/linux
###
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.co>
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

echo "Installing NVM"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

###
# install mongoDB
###
#import the public GPG key for the latest stable version of MongoDB
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list>
sudo apt update
sudo apt install mongodb-org
sudo systemctl start mongod.service

# enable the MongoDB service to start up at boot:
sudo systemctl enable mongod
