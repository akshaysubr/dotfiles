set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-fugitive for git awesomeness
Plugin 'tpope/vim-fugitive'

" vim-airline for a cool statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"tmuxline for tmux and vim-airline integration
Bundle 'edkolev/tmuxline.vim'

"promptline for bash and vim-airline integration
Bundle 'edkolev/promptline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
set shiftwidth=4
set expandtab

let fortran_free_source=1
let fortran_do_enddo=1
let fortran_more_precise=1
let fortran_have_tabs=1

syntax on

set textwidth=0
set wrapmargin=0
set formatoptions-=tc

set mouse=a

set nocompatible
set backspace=indent,eol,start

set hlsearch

set t_Co=256
set background=dark
colorscheme ron

au BufNewFile,BufRead *.rg set filetype=regent
au BufNewFile,BufRead *.t  set filetype=regent

set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'
