PAC=(dropbox yaourt base-devel nodejs go vim tilix arc-gtk-theme geary gradle groovy ppython3 python3-pip zsh docker atom)

NPM=(yarn @angular/cli primeng)

YAOURT=( ulauncher tilix visual-studio-code)        

for i in "${PAC[@]}"
do
sudo pacman -S --noconfirm $i
done

for i in "${YAOURT[@]}"
do
yaourt -S --noconfirm $i
done

for i in "${NPM[@]}"
do
sudo npm install -g $i
done

sudo pip3 install docker-compose

sudo chsh -s /bin/zsh
chsh -s /bin/zsh