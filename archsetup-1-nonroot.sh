#!/bin/bash
#paru requirements
pacman -S --needed base-devel git rust --noconfirm
#instakll paru
mkdir ~/Download
cd ~/Download
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
#run root parts via helper script
sudo ./archsetup-2-root.sh
