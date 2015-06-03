#!/bin/bash

sudo apt-get install exuberant-ctags cscope build-essential cmake python-dev

ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/.dotfiles/bash/.liquidpromptrc ~/.liquidpromptrc
ln -s ~/.dotfiles/vim/.vim ~/.vim
ln -s ~/.dotfiles/bin ~/bin
test -d ~/.vim/bundle || mkdir ~/.vim/bundle
vim +PlugInstall +qall
vim +PlugUpdate +qall
vim +PlugUpgrade +qall

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

