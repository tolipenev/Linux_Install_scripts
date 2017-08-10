#!/bin.bash 

cp -Rf ./i3/.config ~/
cp -Rf ./i3/.Xresources ~/
sudo pacman -S --noconfirm rofi i3
yaourt -S --noconfirm polybar