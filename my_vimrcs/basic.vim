" Highlight the line on entering insert mode, turn it off on returning to
" normal mode
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

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

" Set 10 lines to the cursor - when moving vertically using j/k
set so=10

" Open help files in a vertical split by default
autocmd FileType help wincmd L

" Set timeout len to 1000 ms
set tm=1000

" Turn off audio error bell
set belloff=all
