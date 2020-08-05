source ~/.vim_runtime/my_vimrcs/basic.vim
source ~/.vim_runtime/my_vimrcs/filetypes.vim
source ~/.vim_runtime/my_vimrcs/plugins_config.vim

" source colors last due to control flow of setting
" various colors for various plugins above
" eg assigning lightline color scheme to PaperColor only
" works with settings below if it's sourced last
source ~/.vim_runtime/my_vimrcs/colors.vim
