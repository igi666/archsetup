#!/bin/bash

#setup pacman packages
pacman -S less lsof steam strawberry gcalculator fastfetch networkmanager refind --noconfirm
#setup rEFInd boot manager
sudo refind-install
sudo mkdir /boot/EFI/refind/themes
sudo git clone https://github.com/Pr0cella/rEFInd-glassy.git /boot/EFI/refind/themes/rEFInd-glassy
sudo bash -c 'printf "\ninclude themes/rEFInd-glassy/theme.conf" >> /boot/EFI/refind/refind.conf'
