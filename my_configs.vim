" turn on hyrid line numbers (both relative and absolute)
:set number relativenumber

" You can add some shortcuts to make it easier to jump between errors in quickfix list
" map <C-n> :cnext<CR>
" map <C-m> :cprevious<CR>
" nnoremap <leader>a :cclose<CR>

" Use PaperColor plugin color scheme
set background=light
colorscheme PaperColor

" set showcmd

let g:PaperColor_Theme_Options = {
    \   'theme': {
    \     'default': {
    \       'transparent_background': 1,
    \       'color00': ['#ffffff', ''],
    \       'color05': ['#00cc00', ''],
    \     }
    \   }
    \ }

