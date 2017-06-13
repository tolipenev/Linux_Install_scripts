#!/bin/bash

cd GetConfigs
installGtkPlugins.sh
sh gsettingsRestore.sh
cd ..
cp -R argos ~/.config
sh mouseFix.sh 
