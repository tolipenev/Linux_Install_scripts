sudo add-apt-repository -y ppa:noobslab/icons
<<<<<<< HEAD
sudo add-apt-repository -y ppa:noobslab/themes
sudo apt-get update

sudo apt-get install -y arc-theme
=======

sudo apt-get update


>>>>>>> initial push
sudo apt-get install -y ultra-flat-icons
sudo apt-get install -y ultra-flat-icons-orange
sudo apt-get install -y ultra-flat-icons-green
cd themes
mkdir ~/.themes
cp -r Flatabulous ~/.themes/
mkdir ~/.icons
cp -r Menda-Cursor ~/.icons/
cp -r Phoeton ~/.icons/
cd ..
<<<<<<< HEAD



=======
>>>>>>> initial push
gsettings set org.gnome.desktop.interface gtk-theme "Flatabulous"
gsettings set org.gnome.desktop.interface icon-theme "Ultra-flat"
#change window theme
#gsettings set org.gnome.desktop.wm.preferences theme "CoolestThemeOnEarth"

gsettings set org.gnome.desktop.interface cursor-theme "Phoeton"
