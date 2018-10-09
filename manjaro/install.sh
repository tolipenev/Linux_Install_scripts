#!/bin/bash
set -e
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;36m'
NC='\033[0m'

printmessage(){
	printf "${1}${2}${NC}\n"
}

printmessage $BLUE "Installing oh-my-zsh..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&

printmessage $RED "Please close the additional terminal window when the installationis finished"

ID=$(ps | grep x-)
while [ ! -z $ID ]; do
	sleep 1
	ID=$(ps | grep x-)
done

printmessage $GREEN "Oh-my-zsh installation completed"

printmessage $BLUE "Installing oh-my-zsh addons..."
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
wget https://gist.githubusercontent.com/alpap/c9c0357e75f3318adcce86f6bc7f6527/raw/3f1bc168e9346d1167072717de1d52904fc7e26f/alpap.zsh-theme -P $HOME/.oh-my-zsh/themes
printmessage $GREEN "Oh-my-zsh addons installation completed"

printmessage $BLUE "Updating .zshrc"
cat ./zshrc > $HOME/.zshrc
printmessage $GREEN "Update completed"

#Manjaro Linux only 
DISTRO=$(lsb_release -d | awk -F"\t" '{print $2}')
printmessage $BLUE "Found distribution ${DISTRO}"
if [ $DISTRO="Manjaro Linux" ];then
	printmessage $BLUE "Installing packages..."
	sudo pacman -Syyu --noconfirm 
	sudo pacman -Sy --noconfirm git micro xclip go zsh npm redis chromium p7zip	

	yaourt -S --noconfirm visual-studio-code-bin dropbox
	printmessage $GREEN "Package installation completed"

	printmessage $BLUE "Creating directories..."
	mkdir $HOME/bin
	mkdir $HOME/Sources
	mkdir $HOME/go
	printmessage $GREEN "Directory creation completed"

	printmessage $BLUE "Updating .profile"
	cat ./profile >> $HOME/.profile
	printmessage $GREEN "Update completed"

	printmessage $BLUE "Updating .zshrc with extras"
	cat ./zshrcextra >> $HOME/.zshrc
	printmessage $GREEN "Update completed"
fi

printmessage $RED "YOU ARE READY TO RUMBLE!"
