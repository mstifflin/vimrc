" turn on hyrid line numbers (both relative and absolute)
set number relativenumber

" Automatically trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" You can add some shortcuts to make it easier to jump between errors in quickfix list
" map <C-n> :cnext<CR>
" map <C-m> :cprevious<CR>
" nnoremap <leader>a :cclose<CR>