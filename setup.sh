#!/bin/bash


ln -s ~/.vim/.vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# YCM compilation
sudo apt-get install build-essential cmake
cd ~/.vim/bundle/YouCompleteMe
./install.sh

# Powerline fonts for airline
test -d ~/.fonts || mkdir ~/.fonts
cd ~/.fonts
test -e PowerlineFonts.otf || wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
cd ~/
fc-cache -vf ~/.fonts/
test -d ~/.config/fontconfig/conf.d/ || mkdir -p ~/.config/fontconfig/conf.d/
cd ~/.config/fontconfig/conf.d/
test -e 10-powerline-symbols.conf || wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
echo "You need to restart all your terminal, gvim, vim instances to use the new fonts."

