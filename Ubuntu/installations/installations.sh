sudo add-apt-repository -y ppa:nomacs/stable
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y nomacs
sudo apt-get install -y synaptic
sudo apt-get install -y gparted
sudo apt-get install -y vlc
sudo apt-get install -y git
sudo apt-get install -y p7zip-full 
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get install -y unity-tweak-tool
sudo apt-get install -y zsh
sudo apt-get install -y gdebi
sudo apt-get install -y ubuntu-make
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
