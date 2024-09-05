# !/bin/bash

## Remove unwanted Packages

sudo pacman -Rcs kitty alacritty kvantum meld yad --noco nano

## Install Packages 

sudo rm -rf /var/lib/pacman/sync/*
&&
sudo rm -rf /etc/pacman.d/g*/*
&&
sudo pacman-key --init && sudo pacman-key --populate && sudo pacman -Sy archlinux-keyring 
&& 
clear
&&
pacman -S xfce4-terminal base-devel gcc fake root make git picom vim lightdm lightdm-slick-greeter
&&
# sudo systemctl enable ly 
&&
sudo git clone https://aur.archlinux.org/opera.git
cd opera 
makepkg -si
&& clear
sudo systemctl enable lightdm NetworkManager
&&
clear
&&
echo " system is shutdown  "
&&
shutdown now
