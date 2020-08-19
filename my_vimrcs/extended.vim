" =======================================
" All configs that should be defined last
" =======================================

" Set color scheme
colorscheme PaperColor
set background=light

" Must define background after setting color scheme, else
" it doesn't take overriden configs into account
" if 5 < strftime('%H') && strftime('%H') < 21
"     set background=light
" else
"     set background=dark
" end if

" Conditional needed to be set last/in extended?
" Didn't work when it was in plugins_config
" Use deoplete if python3 (hard dependency of deoplete) is available
if has('python3')
  let g:deoplete#enable_at_startup = 1
end if

