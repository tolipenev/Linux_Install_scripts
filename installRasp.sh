sudo apt update
sudo apt upgrade -y
sudo apt install -y nodejs npm node-legacy git
git clone https://github.com/popcorn-official/popcorn-desktop.git
cd popcorn-desktop
git checkout master
npm install 
