""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/sources_forked/{}')
call pathogen#infect(s:vim_runtime.'/sources_non_forked/{}')

call pathogen#helptags()


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
" Display default help
let g:bufExplorerDefaultHelp=1
" Sort by most recently used
let g:bufExplorerSortBy='mru'
" Do not show unlisted buffers.
let g:bufExplorerShowUnlisted=0
" Do not 'No Name' buffers.
let g:bufExplorerShowNoName=0

let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
" Version 0 is deprecated, add this to config to remove
" start up message
let g:snipMate = { 'snippet_version' : 1  }
ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim_runtime/vimrcs/lightline.vim

let g:lightline = {
    \ 'colorscheme': 'TiffCustomPaperColor',
    \ 'active': {
    \   'left': [ ['mode', 'paste'],
    \             ['readonly', 'filepath', 'modified'] ],
    \   'right': [ ['filetype'], [ 'lineinfo' ], ['percent'] ]
    \ },
    \ 'inactive': {
    \   'left': [ ['mode', 'paste'],
    \             ['readonly', 'filepath', 'modified']],
    \   'right': [ ['filetype'], [ 'lineinfo' ], ['percent'] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \   'filepath': '%f',
    \   'filetype': '%Y',
    \ },
  	\ 'component_function': {
  	\   'cocstatus': 'coc#status'
  	\ },
    \ 'component_visible_condition': {
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \ },
    \ 'separator': { 'left': ' ', 'right': ' ' },
    \ 'subseparator': { 'left': ' ', 'right': ' ' }
    \ }

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker and linter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['gopls']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>
" Avoid the problem where grep produces non-plain output; e.g. ANSI escape codes or colours.
let g:gitgutter_grep=''


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/mg979/vim-visual-multi/wiki/Mappings#full-mappings-list
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-s>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-s>'           " replace visual C-n


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-orgmode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
packloadall
silent! helptags ALL


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => context.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:context_nvim_no_redraw = 1


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
