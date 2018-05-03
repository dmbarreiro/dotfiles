" include header paths for vim to search when using gf command
let &path.="src/include,/usr/include,/usr/local/include,"

" set make to build project out of source
set makeprg=make ...options...

" Shortcut F7 for compilation
nnoremap <F7> :make!<CR>
" Shortcut F5 for execution
nnoremap <F7> :!./program_name<CR>
