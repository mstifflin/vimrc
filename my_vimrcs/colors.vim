" Highlight the line on entering insert mode, turn it off on returning to
" normal mode
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" Use PaperColor plugin color scheme
" https://github.com/NLKNguyen/papercolor-theme/blob/master/DESIGN.md
" Theme options must be defined before setting colorscheme to PaperColor
let g:PaperColor_Theme_Options = {
    \   'theme': {
    \       'default': {
    \           'transparent_background': 0,
    \           'default.light' : {
    \               'override' : {
    \                   'color00': ['#ffffff', ''],
    \                   'color03': ['#7F0000', ''],
    \                   'color05': ['#228B22', ''],
    \                   'search_fg': ['#000000', ''],
    \                   'search_bg': ['#f7c0d4', ''],
    \                   'tabline_bg': ['#33BBFF', ''],
    \                   'tabline_active_fg': ['#FFFFFF', ''],
    \                   'tabline_active_bg': ['#0E07F7', ''],
    \               }
    \           }
    \       }
    \   }
    \ }

set background=light
colorscheme PaperColor
