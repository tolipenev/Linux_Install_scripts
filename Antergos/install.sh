#!/bin/bash 

help(){
    echo "use : write gnome or i3 or openbox for the desired instalation"
}
sudo pacman -Syy
sh bin.sh
cd tlp
sh tlp.sh
cd ../themes
sh themes.sh

if [ "$1" == "gnome" ];then 
cd ../Antergos_Gnome
sh config.sh
elif [ "$1" == "i3" ];then 
cd ../Antergos_i3
sh i3.sh
elif [ "$1" == "openbox" ];then 
cd ../Antergos_Openbox
sh openbox.sh r
elif [ "$1" == "--help" ];then 
help
fi

cd ../gestures
sh gestures.sh
cd ../installations
sh installations.sh
