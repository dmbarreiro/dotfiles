" Personal VIM Configuration File
" Description: Optimized for C/C++ development and some personal shortcuts.
" Inspired by: Gerhard Gappmeier Vim configuration
"              Justin Donaldson Vim configuration
"
" For Neovim specific configuration
" if has("nvim")
" 	...
" endif
"
" nvim in windows uses folder
" ~\AppData\Local\nvim\ 
"
" vim in linux uses
" ~/.vim/
"

" Current file path
" Useful since this file will be sourced
let $LOCAL_PATH = expand('<sfile>:p:h')

"Windows specific
"Modify g:vimpath if your path to vim folder is different
if has("win32") || has("win64")
    " use nvim in windows
    let g:vimpath = '~\AppData\Local\nvim\'
    let $SO_SLASH = '\'
elseif has("unix")
    " use vim-athena in linux
    let g:vimpath = '~/.vim/'
    let $SO_SLASH = '/'
else
    "wild guess"
    let g:vimpath = '~/.vim/'
    let $SO_SLASH = '/'
endif

" <Leader> key is , and ; is : in normal mode
let mapleader=","
"nnoremap ; :
nmap ; :

" Adding some commands to edit and source this file
nmap <Leader>1 :e $MYVIMRC<CR>
nmap <Leader>so :so %<CR>
" Type a comma faster in insert mode
inoremap <Leader><Space> ,

" Capturing error when loading plugins
if v:version >= 700 " try catch only work for vim 7+
    try
        " load plugins with vim-plug
        call plug#begin(g:vimpath . 'bundle')

            " plugin configs file in the same directory
            exec "source " . $LOCAL_PATH . $SO_SLASH . "plugins.vim"

        call plug#end()
    catch
        echom "Warning: Problem loading plugins with vim-plug."
        echom v:exception
    endtry
else
    echom "Warning: Plugins not loaded, update your VIm to version 7+"
endif

" Plugin maps

" CtrlP
nnoremap <Leader>. :CtrlPTag<CR>
" Tagbar
nnoremap <silent> <Leader>c :TagbarToggle<CR>
" open NERDTree
noremap <C-n> :NERDTreeToggle<CR>
" normal map of Ack
nnoremap <Leader>a :Ack<Space>

" End Plugin maps

" Search maps

" enable search pattern highlighting
set hlsearch
" search for visually selected text
" \ character no scaped so it will not work
vnoremap <Space><Space> y/\V<C-R>"<CR>

" End Search maps


" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" always show status line
set laststatus=2
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert Spaces instead of tabs
set tabstop=4        " tab width is 4 Spaces
set shiftwidth=4     " indent also with 4 Spaces
set expandtab        " expand tabs to Spaces
" wrap lines at 80 chars
set textwidth=80
" Visaully wrap w/o actual line break
set wrap
set linebreak
" list disables linebreak
set nolist
" turn syntax highlighting on
syntax on
" Solarized font configuration
if v:version >= 700 " try catch only work for vim 7+
    try
        colorscheme solarized
    catch
        echom "Warning: Solarized colorscheme not present."
        echom v:exception
    endtry
else
    echom "Warning: Update your VIm to version 7+"
endif
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" open split panes to right and bottom
set splitbelow
set splitright
" at least line below and above the cursor
set scrolloff=1

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4


" Enhanced keyboard mappings
"
nnoremap <Space> /
vnoremap <Space> /
" Add newline w/o insert
" Enter/Carriage Return for following line
nnoremap <CR> o<Esc>
" tab navigation
noremap <S-l> gt
noremap <S-h> gT
" Scroll half page up or down
nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>
" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" delete line from insert mode
inoremap <Leader>dd <ESC>ddi
" delete line from cursor insert mode
inoremap <Leader>D <ESC>DA
" delete line till cursor insert/normal mode
inoremap <Leader>b <ESC>d^i
nnoremap <Leader>b d^
" delete word
inoremap <Leader>f <ESC>ciw
nnoremap <Leader>f daw
" delete from cursor to end of word
inoremap <Leader>x <ESC>ldEi
nnoremap <Leader>x dE
" delete till cursor
inoremap <Leader>z <C-w>
nnoremap <Leader>z i<C-W><ESC>l
" Words to upper/lowercase
nnoremap <Leader>u gUaw
nnoremap <Leader>l guaw
" Capitalize first char o a word
"nnoremap <Leader>U guaweb~
" Invert first char of a word
nnoremap <Leader>I eb~
" Invert current character lower/uppercasewise
nnoremap <Leader>i ~
" saves file
nnoremap :w :w<CR>
" closes file without saving
nnoremap :q :q<CR>
" closes file without saving
nnoremap :qz :q!<CR>
" toggle paste mode
set pastetoggle=<F2>
" Copy to clipboard
noremap <Leader>y "*y
" Paste from clipboard
noremap <Leader>p "*p
" switch between header/source with F4
noremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
noremap <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
noremap <F6> :Dox<CR>
" build using makeprg with <F7>
noremap <F7> :make<CR>
" build using makeprg with <S-F7>
noremap <S-F7> :make clean all<CR>
" goto definition with F12
noremap <F12> <C-]>
" <Leader>j is Esc key to leave insert mode
inoremap <Leader>j <Esc>
" <Leader>v creates new vertical split in normal mode
nnoremap <silent> <Leader>v <C-w>v
" <Leader>s creates new horizontal split in normal mode
nnoremap <silent> <Leader>s <C-w>s
" in diff mode we use the spell check keys for merging
if &diff
  ” diff settings
  noremap <M-Down> ]c
  noremap <M-Up> [c
  noremap <M-Left> do
  noremap <M-Right> dp
  noremap <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
"else
  " spell settings
"  :setlocal spell spelllang=en
  " set the spellfile - folders must exist
"  set spellfile=~/.vim/spellfile.add
"  noremap <M-Down> ]s
"  noremap <M-Up> [s
endif
