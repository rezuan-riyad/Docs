# Docs
### Script Execution Permission
```
sudo chmod +x /path/to/file
```
### Wifi driver for HP Laptop
Install source for Realtek 8821c PCIe Wifi Driver from focal apt repository
```
sudo apt install rtl8821ce-dkms
```
After installation reboot computer.

### Install from .deb file
```
sudo dpkg -i package_file.deb
```
### Disable Or Enable input device
```
xinput -list
xinput foat <ID>
```
