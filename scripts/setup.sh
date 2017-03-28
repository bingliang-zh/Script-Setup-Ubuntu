#!/bin/bash

# REPOSITORY
## shadowsocks-qt5
sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y
## uget
sudo add-apt-repository ppa:plushuang-tw/uget-stable -y
## keepass2
sudo add-apt-repository ppa:jtaylor/keepass -y


# UPDATE

sudo apt update

# INSTALL
## git
sudo apt install git-core git-gui -y
## shadowsocks-qt5
sudo apt install shadowsocks-qt5 -y
## proxychains
sudo apt install proxychains -y
mkdir ~/.proxychains
cp ./proxychains.conf ~/.proxychains/proxychains.conf
## uget
sudo apt install uget -y
## ruby
sudo apt install ruby-full -y
## gimp
sudo apt install gimp -y
## inkspace
sudo apt install inkspace -y
## keepass2
sudo apt install keepass2 -y
## shadowsocks
sudo apt install shadowsocks -y
## dropbox
sudo apt install nautilus-dropbox -y
## rime
sudo apt install ibus-rime -y
sudo apt install librime-data-pinyin-simp -y

# Upgrade
sudo apt upgrade -y
# Auto remove
sudo apt autoremove -y

## steam
sudo apt install steam -y
