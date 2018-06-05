" file containing plugins to be installed with 
" vim-plug
"

" Solarized font and colors
Plug 'altercation/vim-colors-solarized'
    let g:solarized_termtrans = 1
    set background=dark

" File tree explorer
Plug 'scrooloose/nerdtree'

" If NERDTree loaded, we load NERDTree-git
"Plug 'Xuyuanp/nerdtree-git-plugin'

" Easy comments
Plug 'scrooloose/nerdcommenter'

" Vim insert mode completions with Tab
Plug 'ervandew/supertab'

" Highlights trailing whitespace in red
" :FixWhitespace to fix it
Plug 'bronson/vim-trailing-whitespace'

" Ack for vim
Plug 'mileszs/ack.vim'

" Useful status bar
Plug 'vim-airline/vim-airline'

" Fuzzy file finder
Plug 'kien/ctrlp.vim'
    " Changing CtrlP plugin mappigs
    let g:ctrlp_map = '<C-p>'
    let g:ctrlp_cmd = 'CtrlP'

" Vim easy motion
Plug 'easymotion/vim-easymotion'

" Simplify doxygen documentation for C,C++ and python
Plug 'vim-scripts/DoxygenToolkit.vim'
    let g:DoxygenToolkit_authorName="David Martinez Barreiro <Twitter @hombremultiple>"

" Autocompletion for C family languages
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Static syntax and style checker for Python
Plug 'nvie/vim-flake8'


