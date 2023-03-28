sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo zypper ar https://packages.microsoft.com/yumrepos/vscode vscode
sudo zypper ref
sudo zypper in -y code
