"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PaperColor (color scheme)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/NLKNguyen/papercolor-theme/blob/master/DESIGN.md
" Theme options must be defined before setting colorscheme to PaperColor
let g:PaperColor_Theme_Options = {
    \   'theme': {
    \       'default.light': {
    \           'override' : {
    \               'color00': ['#ffffff', ''],
    \               'color03': ['#7F0000', ''],
    \               'color05': ['#228B22', ''],
    \               'search_fg': ['#000000', ''],
    \               'search_bg': ['#f7c0d4', ''],
    \           }
    \       },
    \       'default.dark': {
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim_runtime/my_vimrcs/lightline.vim

let g:lightline = {
    \ 'colorscheme': 'TiffCustomPaperColor',
    \ 'active': {
    \   'left': [ ['mode', 'paste'],
    \             ['gitbranch', 'readonly', 'filepath', 'modified'] ],
    \   'right': [ ['filetype'], [ 'lineinfo' ], ['percent'] ]
    \ },
    \ 'inactive': {
    \   'left': [ ['mode', 'paste'],
    \             ['gitbranch', 'readonly', 'filepath', 'modified']],
    \   'right': [ ['filetype'], [ 'lineinfo' ], ['percent'] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \   'gitbranch': '%{exists("*FugitiveHead")?FugitiveHead():""}',
    \   'filepath': '%f',
    \   'filetype': '%Y',
    \ },
    \ 'component_visible_condition': {
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \   'gitbranch': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
    \ },
    \ 'separator': { 'left': ' ', 'right': ' ' },
    \ 'subseparator': { 'left': ' ', 'right': ' ' }
    \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Avoid the problem where grep produces non-plain output; e.g. ANSI escape codes or colours.
let g:gitgutter_grep=''

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = 'node_modules\|.gen\|gen\|vendor\|go-build\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => Deoplete
""""""""""""""""""""""""""""""
" Use deoplete.
" This has been moved to extended vim since there is a conditional for this config value
" let g:deoplete#enable_at_startup = 1

" Delay completion by 5 milliseconds
let g:deoplete#auto_complete_delay = 5

" The default key for autocompletion is <Ctrl-x><Ctrl-o>
" and <Ctrl-P> for going up in the list and <Ctrl-N> for going down.
" deoplete tab-complete
" From https://www.gregjs.com/vim/2016/configuring-the-deoplete-asynchronous-keyword-completion-plugin-with-tern-for-vim/
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

call deoplete#custom#option({
  \ 'max_list': 20,
  \ 'on_insert_enter': v:false,
  \ })

""""""""""""""""""""""""""""""
" => BufExplorer
""""""""""""""""""""""""""""""
" Display default help
let g:bufExplorerDefaultHelp=1
" Sort by most recently used
let g:bufExplorerSortBy='mru'
" Do not show unlisted buffers.
let g:bufExplorerShowUnlisted=0
" Do not 'No Name' buffers.
let g:bufExplorerShowNoName=0
