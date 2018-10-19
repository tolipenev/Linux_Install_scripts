#!/bin/bash
set -e
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;36m'
NC='\033[0m'

printmessage(){
	printf "${1}${2}${NC}\n"
}

PACKAGES_TO_INSTALL='git micro xclip go npm p7zip'
YAOURT_PACKAGES="visual-studio-code-bin dropbox google-chrome"

printmessage $GREEN "Searching for a package manager..."
MANAGERS=$(apropos "package manage")

MANAGERS=$(apropos "package manager")
if [[ $MANAGERS == *"dpkg"* ]]; then
	printmessage $BLUE "Found dpkg"
	INSTALL_COMMAND="sudo apt update && sudo apt install -y"
elif [[ $MANAGERS == *"dnf"* ]]; then
	printmessage $BLUE "Found dnf"
	INSTALL_COMMAND="sudo dnf update -y && sudo dnf install -y"
elif [[ $MANAGERS == *"pacman"* ]]; then
	printmessage $BLUE "Found pacman"
	INSTALL_COMMAND="sudo pacman -Syy --noconfirm && sudo pacman -S --noconfirm"
fi 

if [[ $MANAGERS == *"yaourt"* ]]; then
printmessage $BLUE "Found yaourt"
YAOURT=1
fi

printmessage $BLUE "Installing zsh..."
$INSTALL 
printmessage $GREEN "zsh installation completed"

printmessage $BLUE "Installing oh-my-zsh..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed -e 's/env zsh -l//')" 

printmessage $GREEN "Oh-my-zsh installation completed"

printmessage $BLUE "Installing oh-my-zsh addons..."
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
wget https://gist.githubusercontent.com/alpap/c9c0357e75f3318adcce86f6bc7f6527/raw/3f1bc168e9346d1167072717de1d52904fc7e26f/alpap.zsh-theme -P $HOME/.oh-my-zsh/themes
printmessage $GREEN "Oh-my-zsh addons installation completed"

printmessage $BLUE "Updating .zshrc"
cat ./zshrc > $HOME/.zshrc
printmessage $GREEN "Update completed"

printmessage $BLUE "Found distribution base ${DISTRO}"

printmessage $BLUE "Installing packages..."
$INSTALL_COMMAND $PACKAGES_TO_INSTALL

if [ ! -z $YAOURT ]; then 
	yaourt -S --noconfirm $YAOURT_PACKAGES
fi 

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

printmessage $RED "YOU ARE READY TO RUMBLE!"
