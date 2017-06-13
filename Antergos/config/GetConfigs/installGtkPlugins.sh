#!/bin/bash
#extLoc="~/.local/share/gnome-shell/extension/"
extLoc="xs/"

mkdir temp 
cd temp
mkdir xs
git clone https://github.com/jderose9/dash-to-panel.git
cd dash-to-panel
make 
make install
cd ..

git clone https://github.com/p-e-w/argos.git
cp -r argos/argos@pew.worldwidemann.com ${extLoc}

git clone https://github.com/dnohales/battery-percentage-extension.git
mkdir ${extLoc}battery-percentage@nohales.org
cp -r battery-percentage-extension/* ${extLoc}battery-percentage@nohales.org

git clone https://github.com/gpouilloux/gnome-shell-extension-docker.git
mkdir ${extLoc}gnome-shell-extension-docker
cp -r gnome-shell-extension-docker/* ${extLoc}gnome-shell-extension-docker

git clone https://github.com/rockon999/dynamic-panel-transparency.git
cp -r argos/dynamic-panel-transparency ${extLoc}

git clone https://github.com/HROMANO/nohotcorner.git
mkdir ${extLoc}nohotcorner@azuri.free.fr
cp -r nohotcorner/* ${extLoc}nohotcorner@azuri.free.fr

git clone https://github.com/jenslody/gnome-shell-extension-openweather.git
mkdir ${extLoc}openweather-extension@jenslody.de
cp -r gnome-shell-extension-openweather/* ${extLoc}openweather-extension@jenslody.de

git clone https://github.com/kgshank/gse-sound-output-device-chooser.git
cp -r gse-sound-output-device-chooser/sound-output-device-chooser@kgshank.net ${extLoc}

git clone https://github.com/kgshank/gse-refresh-wifi.git
cp -r gse-refresh-wifi/refresh-wifi@kgshank.net ${extLoc}

cd git clone https://github.com/phocean/TopIcons-plus.git
cd TopIcons-plus
make install
cd ..

#rm -Rf temp