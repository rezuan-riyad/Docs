### Install visual studio code with apt
01. Update the packages index and install the dependencies by running the following command as a user with sudo privileges :
```
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
```
02. Import the Microsoft GPG key using the following wget command :
```
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
```
And enable the Visual Studio Code repository by typing:
```
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
```
03. Once the apt repository is enabled , install the Visual Studio Code package:
```
sudo apt install code
```
