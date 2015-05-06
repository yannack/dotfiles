dotfiles
========

all my dotfiles (.vim, .liquidprompt, .bashrc, ...)

To install: 
-----------

Checkout the [provisioning](https://github.com/yannack/provisioning) project
which uses ansible, or use the following (will probably no longer be maintained
however).

```
git clone https://github.com/yannack/dotfiles ~/.dotfiles/
cd ~/.dotfiles
./setup.sh
```

Vim cheatsheet:
---------------

Just go into the vim/cheatsheet/ folder and run make (you'll need sed and
pandoc) to generate a nice html cheatsheet for Vim. I find that printing it
first to PDF from Firefox (scaling to 66% seems to fit it nicely on a single
page) and then from PDF to paper gives the best quality rendering.
