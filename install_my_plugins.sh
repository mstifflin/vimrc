#!/bin/zsh

# vim-go https://github.com/fatih/vim-go
# papercolor-theme https://github.com/NLKNguyen/papercolor-theme.git
# deoplete https://github.com/Shougo/deoplete.nvim.git
# nvim-yarp https://github.com/roxma/nvim-yarp.git
# vim-hug-neovim-rpc https://github.com/roxma/vim-hug-neovim-rpc.git
# vim-toml https://github.com/cespare/vim-toml.git
# vim-thrift https://github.com/solarnz/thrift.vim.git
# vim-visual-multi https://github.com/mg979/vim-visual-multi.git

# Deoplete dependency
if [[ $(pip3 list | grep pynvim) != "" ]]; then
  echo "pynvim already installed"
else
  pip3 install --user pynvim
fi

