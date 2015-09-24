if has('vim_starting')
  set nocompatible    " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" UTF-8 for everything
scriptencoding utf-8
set fenc=utf-8
set enc=utf-8

filetype plugin indent on

" Highlighting
syntax on
syn on

" Two spaces for tabs, and auto-expand
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set backspace=indent,eol,start

" Whitespace chars
set list
set listchars=tab:\|\ ,eol:¬

" :s/foo/bar will act like :s/foo/bar/g
set gdefault

" case-insensitive search
set ignorecase
set smartcase
set showmatch
set incsearch

" Line numbers
set number
set ruler

" Some standard stuff that makes everything act sane...
set noerrorbells
set showcmd
set wildmenu
set history=1000
set vb
set autoread
set laststatus=2
set ttimeout
set ttimeoutlen=50
set nrformats-=octal
set shiftround

" NeoBundle package management (this should be wrapped so 'puters without
" neobundle don't break...
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
  NeoBundle 'bling/vim-airline'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'kien/ctrlp.vim'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'i-tu/vim-haskligConceal'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'scrooloose/nerdcommenter'
  "NeoBundle 'valloric/youcompleteme'

call neobundle#end()
 
" Better handling of word-wrapped lines (might mess up some scripts?)
nmap j gj
nmap k gk

" Leader to space. \ is hard to hit on nordic keyboards
let mapleader = "\<Space>"

nnoremap <Leader>o :CtrlP<cr>
nnoremap <Leader>w :w<cr>
nnoremap <Leader>t :NERDTree<cr>

" Leader-commands for global clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Visual line mode
nmap <Leader><Leader> V

" Tab for buffer switch works magic
:nnoremap <Tab> :bnext<cr>
:nnoremap <S-Tab> :bprevious<cr>

" Tab commands
map <C-Tab> :tabnext<cr>
map <C-S-Tab> :tabprevious<cr>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabmove<cr>

" Key mappings for easy navigation between splits to save a keystroke.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open new split panes to right and bottom
set splitbelow
set splitright

" make! ("B-uild")
map <leader>b :!make<cr>

" run current class in java
map <leader>j :!java %:r<cr>

""For Powerline and Haskell Conceal
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color-italic
set termencoding=utf-8

set guioptions-=r 
set guioptions-=l
set guifont=Hasklig:h14
let g:airline_powerline_fonts = 1

NeoBundleCheck

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------
"let g:solarized_visibility="low"    "default value is normal
syntax enable
"set background=dark
"colorscheme solarized
" ------------------------------------------------------------------

" The following items are available options, but do not need to be
" included in your .vimrc as they are currently set to their defaults.

" let g:solarized_termtrans=0
" let g:solarized_degrade=0
" let g:solarized_bold=1
" let g:solarized_underline=1
" let g:solarized_italic=1
" let g:solarized_termcolors=16
" let g:solarized_contrast="normal"
" let g:solarized_diffmode="normal"
" let g:solarized_hitrail=0
" let g:solarized_menu=1
"
" Italic comments
"highlight Comment gui=italic

