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
    cd ../Gnome
    sh config.sh
    gestures $1
elif [ "$1" == "xfce" ];then 
    cd ../xfce
    sh xfce.sh
    gestures $1
elif [ "$1" == "--help" ];then 
    help
fi


cd ../installations
sh installations.sh $1
