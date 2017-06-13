sh installations/install.sh
sudo apt-get install -y zsh
sudo chsh -s /bin/zsh
cd installations
cp -r .zshrc ~/
cp -r .bash_logout ~/.bash_logout
cp -r .bashrc ~/.bashrc
cp -r .profile ~/.profile
cd ..

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#copy the .zsh file over zsh
