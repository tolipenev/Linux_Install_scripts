PAC=(dropbox nodejs go vim tilix arc-gtk-theme geary gradle groovy python-pip zsh kotlin)

NPM=(yarn @angular/cli primeng)

YAOURT=( ulauncher)        

for i in "${YAOURT[@]}"
do
yaourt -S --noconfirm $i
done


for i in "${PAC[@]}"
do
sudo pacman -Syy --noconfirm $i
done


for i in "${NPM[@]}"
do
sudo npm install -g $i
done


sudo chsh -s /bin/zsh
chsh -s /bin/zsh