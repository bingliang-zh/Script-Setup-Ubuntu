#!/bin/bash

chmod +x ./ss-start.sh

# REMOVE

# REPOSITORY
## shadowsocks-qt5
sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y
## sublime-text-3
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
## uget
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
## keepass2
sudo add-apt-repository ppa:jtaylor/keepass -y


# UPDATE

sudo apt-get update

# INSTALL
## git
sudo apt-get install git git-gui -y
## vim
sudo apt-get install vim -y
## shadowsocks-qt5
sudo apt-get install shadowsocks-qt5 -y
## proxychains-ng
git clone https://github.com/rofl0r/proxychains-ng.git
cd proxychains-ng
./configure
make && make install
cd ..
cp ./proxychains.conf /etc/proxychains.conf
rm -rf proxychains-ng
## sublime-text-3
sudo apt-get install sublime-text-installer -y
## chromium
sudo apt-get install chromium-browser -y
## uget
sudo apt-get install uget -y
## ruby
sudo apt-get install ruby-full -y
## gimp
sudo apt-get install gimp -y
## keepass2
sudo apt-get install keepass2 -y
## shadowsocks
sudo apt-get install shadowsocks -y

# Upgrade
sudo apt-get upgrade -y

# Auto remove
sudo apt-get autoremove -y

# Run Shadowsocks
./ss-start.sh &
sleep 2

# setup wallpaler
FILE="'file://$(readlink -f "wallpaper.jpg")'";
echo changing to "$FILE"
gsettings set org.gnome.desktop.background picture-uri "$FILE"

## dropbox
cd ~
proxychains4 wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
proxychains4 ~/.dropbox-dist/dropboxd &
## steam
sudo apt-get install steam -y
