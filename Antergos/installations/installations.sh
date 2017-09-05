
sh ./install.sh
chsh -s /bin/zsh 

if [ "$1" == "xfce"] ; then 
TERMINAL="xfce4-terminal -e"
elif [ "$1" == "gnome" ]; then 
TERMINAL="gnome terminal -e"
fi
${TERMINAL}  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && 
cp -r .zshrc ~
cp -r .profile ~/.profile
