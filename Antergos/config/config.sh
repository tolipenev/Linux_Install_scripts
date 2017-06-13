#!/bin/bash

cd GetConfigs
sh gsettingsRestore.sh
cd ..
cp -R argos ~/.config
sh mouseFix.sh 
