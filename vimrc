" Personal VIM Configuration File
" Description: Optimized for C/C++ development and some personal shortcuts.
" Inspired by: Gerhard Gappmeier Vim configuration
"              Justin Donaldson Vim configuration

" <Leader> key is , and ; is : in normal mode
let mapleader=","
nnoremap ; :

" Adding some commands to edit and source this file
nmap <Leader>1 :e $MYVIMRC<CR>
nmap <Leader>so :so %<CR>

" load plugins with vim-plug
call plug#begin('~/.vim/bundle')

" plugin configs stored on a separate file
 source ~/.plugins.vim

call plug#end()

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" enable search pattern highlighting
set hlsearch
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 80 chars.
set textwidth=80
" Visaully wrap w/o actual line break
set wrap
set linebreak
" list disables linebreak
set nolist
" turn syntax highlighting on
syntax on
" Solarized font configuration
colorscheme solarized
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

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"

" Enhanced keyboard mappings
"
nnoremap <space> /
vnoremap <space> /
" tab navigation
noremap <S-l> gt
noremap <S-h> gT
" save the file
nnoremap <Leader>s :w<CR>
inoremap <Leader>s <ESC>:w<CR>i
" closes file 
noremap <Leader>q :q<CR>
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
" open NERDTree
noremap <C-n> :NERDTreeToggle<CR>
" jj is Esc key to leave insert mode
inoremap jj <Esc>
" vv creates new vertical split in normal mode
nnoremap <silent> vv <C-w>v
" vs creates new horizontal split in normal mode
nnoremap <silent> vs <C-w>s
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
