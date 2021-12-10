## Install Visual Studio Code
```
 sudo apt update
 sudo apt install software-properties-common apt-transport-https wget
```
```
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
```

## Install Chromium 88 in Ubuntu
```
wget http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_88.0.4324.96-1_amd64.deb
sudo apt-get install ./google-chrome-stable_88.0.4324.96-1_amd64.deb
```
