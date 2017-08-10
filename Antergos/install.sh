#!/bin/bash 

help(){
    echo "use : write gnome or i3 or openbox for the desired instalation"
}

gestures(){
cd ../gestures
sh gestures.sh "$1"
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
    gestures $1
elif [ "$1" == "i3" ];then 
    cd ../Antergos_i3
    sh i3.sh
    gestures $1
elif [ "$1" == "--help" ];then 
    help
fi


cd ../installations
sh installations.sh
