sudo pacman -Syyu --noconfirm
set -x
programs=( 
  chromium \
  geary \
  git \
  zsh \
  tilix \
  npm \
  groovy \
  python3 \
  python-pip \
  go \
  arc-gtk-theme
)

for VAR in $programs
do
  echo "installing $VAR"
  sudo pacman -Sy --noconfirm $VAR
done
sh installBackups.sh

yaourt -Sy --noconfirm intellij-idea-community-edition visual-studio-code

sudo npm install primeng --save 
sudo npm install -g yarn  

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
