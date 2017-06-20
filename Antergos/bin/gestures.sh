#!/bin/bash
sudo gpasswd -a $USER input
sudo apt-get install -y xdotool wmctrl
sudo apt-get install -y libinput-tools
git clone http://github.com/bulletmark/libinput-gestures
cd libinput-gestures
sudo ./libinput-gestures-setup install
cd ..
rm -Rf libinput-gestures

#libinput-gestures-setup start
#libinput-gestures-setup autostart

#libinput-gestures-setup start
#You can stop the background app with:


#libinput-gestures-setup stop
#You can enable the app to start automatically in the background when you log in 
# with:

#libinput-gestures-setup autostart
#You can disable the app from starting automatically with:

#libinput-gestures-setup autostop
#You can restart the app or reload the configuration file with:

#libinput-gestures-setup restart
#You can check the status of the app with:
#libinput-gestures-setup status

# Unistall
#sudo libinput-gestures-setup uninstall
