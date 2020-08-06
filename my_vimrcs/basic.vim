" turn on hyrid line numbers (both relative and absolute)
set number relativenumber

" Automatically trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Display an incomplete command in the lower right corner of the Vim window,
" left of the ruler.  For example, when you type '2f', Vim is waiting for you to
" type the character to find and '2f' is displayed.  When you press 'w' next,
" the '2fw' command is executed and the displayed '2f' is removed.
set showcmd

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" You can add some shortcuts to make it easier to jump between errors in quickfix list
" map <C-n> :cnext<CR>
" map <C-m> :cprevious<CR>
" nnoremap <leader>a :cclose<CR>
