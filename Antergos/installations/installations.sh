sudo pacman -Syyu --noconfirm
sudo pacman -S --noconfirm git zsh tilix
sudo chsh -s /bin/zsh

cp -r .zshrc ~/
cp -r .profile ~/.profile

chsh -s /bin/zsh 
sudo chsh -s /bin/zsh 


yaourt -S micro

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 

#copy the .zsh file over zsh
