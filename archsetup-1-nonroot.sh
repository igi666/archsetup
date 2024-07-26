#!/bin/bash
#paru requirements
sudo pacman -S --needed base-devel git rust --noconfirm
#instakll paru
mkdir ~/Download
cd ~/Download
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
#run root parts via helper script
sudo bash ./archsetup-2-root.sh
#use paru to install AUR packages
paru -S google-chrome xone-dkms xone-dongle-firmware onedriver
