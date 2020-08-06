" Highlight the line on entering insert mode, turn it off on returning to
" normal mode
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" Use PaperColor plugin color scheme
" https://github.com/NLKNguyen/papercolor-theme/blob/master/DESIGN.md
" Theme options must be defined before setting colorscheme to PaperColor
let g:PaperColor_Theme_Options = {
    \   'theme': {
    \       'default.light': {
    \           'transparent_background': 0,
    \           'override' : {
    \               'color00': ['#ffffff', ''],
    \               'color03': ['#7F0000', ''],
    \               'color05': ['#228B22', ''],
    \               'search_fg': ['#000000', ''],
    \               'search_bg': ['#f7c0d4', ''],
    \               'tabline_bg': ['#33BBFF', ''],
    \               'tabline_active_fg': ['#FFFFFF', ''],
    \               'tabline_active_bg': ['#0E07F7', ''],
    \           }
    \       },
    \       'default.dark': {
    \           'transparent_background': 0,
    \           'override' : {
    \               'color05': ['#00E500', ''],
    \               'color07': ['#ffffff', ''],
    \               'search_fg': ['#000000', ''],
    \               'search_bg': ['#f7c0d4', ''],
    \               'linenumber_fg': ['#ffffff', ''],
    \           }
    \       }
    \   }
    \ }

colorscheme PaperColor

" Must define background after setting color scheme, else
" it doesn't take overriden configs into account
if 5 < strftime('%H') && strftime('%H') < 21
    set background=light
else
    set background=dark
end if

