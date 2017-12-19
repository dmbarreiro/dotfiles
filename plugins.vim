" file containing plugins to be installed with 
" vim-plug
"

" Navigate between vim and tmux splits
Plug 'christoomey/vim-tmux-navigator'

" Solarized font and colors
Plug 'altercation/vim-colors-solarized'
    let g:solarized_termtrans = 1
    set background=dark

" File tree explorer
Plug 'scrooloose/nerdtree'

" If NERDTree loaded, we load NERDTree-git
Plug 'Xuyuanp/nerdtree-git-plugin'

" Vim and tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" Vimux let you interact with tmux from vim
Plug 'benmills/vimux'

" Easy comments
Plug 'scrooloose/nerdcommenter'

" Snipmate dependencies
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Textual snippets
Plug 'garbas/vim-snipmate'

" Vim insert mode completions with Tab
Plug 'ervandew/supertab'

" Highlights trailing whitespace in red
" :FixWhitespace to fix it
Plug 'bronson/vim-trailing-whitespace'

" Ack for vim
Plug 'mileszs/ack.vim'

" Syntax checking
Plug 'vim-syntastic/syntastic'
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    "let g:syntastic_mode_map = {"mode": "pasive"}

" Useful status bar
Plug 'vim-airline/vim-airline'

" Fuzzy file finder
Plug 'kien/ctrlp.vim'
    " Changing CtrlP plugin mappigs
    let g:ctrlp_map = '<C-p>'
    let g:ctrlp_cmd = 'CtrlP'

" Vim easy motion
Plug 'easymotion/vim-easymotion'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Tag management
"Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

" AutoComplete
Plug 'ajh17/VimCompletesMe'

" Simplify doxygen documentation for C,C++ and python
Plug 'vim-scripts/DoxygenToolkit.vim'
    let g:DoxygenToolkit_authorName="David Martinez Barreiro <Twitter @hombremultiple>"
