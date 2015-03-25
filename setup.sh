#!/bin/bash

sudo apt-get install exuberant-ctags cscope

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.bashrc ~/.bashrc
ln -s ~/.vim/.liquidpromptrc ~/.liquidpromptrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +PluginUpdate +qall

# YCM compilation
sudo apt-get install build-essential cmake python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.sh

# Powerline fonts for airline
cd /tmp
# this part for gvim
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
# from here on, for console
cd ~/.fonts/
test -e PowerlineSymbols.otf || wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
cd ~/
fc-cache -vf ~/.fonts/
test -d ~/.config/fontconfig/conf.d/ || mkdir -p ~/.config/fontconfig/conf.d/
cd ~/.config/fontconfig/conf.d/
test -e 10-powerline-symbols.conf || wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf

# bd utility
sudo wget -O /usr/bin/bd https://raw.github.com/vigneshwaranr/bd/master/bd
sudo chmod +rx /usr/bin/bd
sudo wget -O /etc/bash_completion.d/bd https://raw.github.com/vigneshwaranr/bd/master/bash_completion.d/bd

# liquidprompt
cd ~
test -d liquidprompt || git clone https://github.com/nojhan/liquidprompt
cd liquidprompt
git pull
cd ~

echo "to install solarized in gnome terminal:"
echo "cd /tmp"
echo "git clone https://github.com/Anthony25/gnome-terminal-colors-solarized"
echo "cd gnome-terminal-colors-solarized/"
echo "./install.sh"

echo "You need to restart all your terminal, gvim, vim instances to use the new fonts."

