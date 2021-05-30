#!/bin/sh

# Only needed for vim? Not needed for neovim, I think
# ~/.vim_runtime/install_deoplate_dependencies.sh
~/.vim_runtime/install_awesome_vimrc.sh
mkdir -p ~/.config/nvim

if [ ! -e ~/.config/nvim/init.vim ]; then
  ln -s ~/.vim_runtime/nvim_init.vim ~/.config/nvim/init.vim
fi

