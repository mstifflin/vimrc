#!/bin/sh

# vim
~/.vim_runtime/install_awesome_vimrc.sh

# nvim related
mkdir -p ~/.config/nvim

if [ ! -e ~/.config/nvim/init.vim ]; then
  ln -s ~/.vim_runtime/nvim_init.vim ~/.config/nvim/init.vim
fi

