mkdir ~/.themes
cp Gnome-OSX-Dark-Shell ~/themes
cp Gnome-OSX-II-2-5-1 ~/themes
cp Gnome-OSX-II-NT-2-5-1 ~/themes
cp Gnome-OSX-Light-Shell ~/themes

cp -r Gnome-* ~/.themes/
mkdir ~/.icons
cp -r Menda-Cursor ~/.icons/
cp -r Phoeton ~/.icons/
cp -r Arc ~/.icons
sudo pacman -S arc-gtk-theme --noconfirm