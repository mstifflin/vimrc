# Comprehensive Go plugin for vim
if [ ! -d ~/.vim_runtime/my_plugins/vim-go ]; then
  git clone https://github.com/fatih/vim-go ~/.vim_runtime/my_plugins/vim-go
else
  echo "vim-go already installed"
fi

# Preferred light color theme
if [ ! -d ~/.vim_runtime/my_plugins/papercolor-theme ]; then
  git clone https://github.com/NLKNguyen/papercolor-theme.git ~/.vim_runtime/my_plugins/papercolor-theme
else
  echo "papercolor-theme already installed"
fi

# Deoplete (omnifunc real time autocompletion) and its dependencies
if [ ! -d ~/.vim_runtime/my_plugins/deoplete ]; then
  git clone https://github.com/Shougo/deoplete.nvim.git ~/.vim_runtime/my_plugins/deoplete
else
  echo "deoplete and its dependencies already installed"
fi

# Deoplete dependency
if [ ! -d ~/.vim_runtime/my_plugins/nvim-yarp ]; then
  git clone https://github.com/roxma/nvim-yarp.git ~/.vim_runtime/my_plugins/nvim-yarp
else
  echo "nvim-yarp already installed"
fi

# Deoplete dependency
if [ ! -d ~/.vim_runtime/my_plugins/vim-hug-neovim-rpc ]; then
  git clone https://github.com/roxma/vim-hug-neovim-rpc.git ~/.vim_runtime/my_plugins/vim-hug-neovim-rpc
else
  echo "vim-hug-neovim-rpc already installed"
fi

# Deoplete dependency
if [[ $(pip3 list | grep pynvim) = "" ]]; then
  pip3 install --user pynvim
else
  echo "pynvim already installed"
fi

# TOML syntax support
if [ ! -d ~/.vim_runtime/my_plugins/vim-toml ]; then
  git clone https://github.com/cespare/vim-toml.git ~/.vim_runtime/my_plugins/vim-toml
else
  echo "vim-toml already installed"
fi

# Thrift syntax support
if [ ! -d ~/.vim_runtime/my_plugins/vim-thrift ]; then
  git clone https://github.com/solarnz/thrift.vim.git ~/.vim_runtime/my_plugins/vim-thrift
else
  echo "vim-thrift already installed"
fi

# Vim multiple cursors (old vim-multiple-cursor plugin is deprecated by this)
if [ ! -d ~/.vim_runtime/my_plugins/vim-visual-multi ]; then
  git clone https://github.com/mg979/vim-visual-multi.git ~/.vim_runtime/my_plugins/vim-visual-multi
else
  echo "vim-visual-multi already installed"
fi
