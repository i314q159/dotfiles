pacman -Sy
pacman -S sudo vim
useradd -m -G wheel -s /bin/bash i314q159
vim /etc/sudoers

# %wheel ALL=(ALL:ALL) ALL

passwd i314q159
