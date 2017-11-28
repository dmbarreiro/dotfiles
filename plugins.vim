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
    let g:syntastic_mode_map = {"mode": "pasive"}

" Useful status bar
Plug 'vim-airline/vim-airline'

" Fuzzy file finder
Plug 'kien/ctrlp.vim'

" Vim easy motion
Plug 'easymotion/vim-easymotion'
