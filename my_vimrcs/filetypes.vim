""""""""""""""""""""""""""""""
" => Go
""""""""""""""""""""""""""""""
autocmd FileType go nmap <leader>t :GoTestFunc!<cr>
autocmd FileType go nmap <leader>T :GoTest!<cr>
autocmd FileType go nmap <leader>c :GoCoverageToggle!<cr>

let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1

" Instead of creating a template file on new file creation, use the package name
let g:go_template_use_pkg = 1

" Turn off auto jumping to errors
let g:go_jump_to_error = 0

" Show the name of each failed test before errors/logs
let g:go_test_show_name = 1

" Turn off code completion via omnifunc
" let g:go_code_completion_enabled = 0

" Stop annoying pop up for every gofmt failure
let g:go_fmt_fail_silently = 1

" Turn off highlighting of same identifiers (slow?)
let g:go_auto_sameids = 0

" Currently by default :GoDecls and :GoDeclsDir show type and function declarations. This is customizable with the g:go_decls_includes setting. By default it's in the form of:
let g:go_decls_includes = "func,type"

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" This will add new commands, called :A, :AV, :AS and :AT.
" :A works just like :GoAlternate, it replaces the current buffer with the alternate file.
" :AV will open a new vertical split with the alternate file.
" :AS will open the alternate file in a new split view and
" :AT in a new tab.
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

" Use Deoplete for Go files
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*'  })

