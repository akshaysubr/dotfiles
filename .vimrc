set nocompatible              " be iMproved, required

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" vim-fugitive for git awesomeness
Plug 'tpope/vim-fugitive'

" vim-airline for a cool statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"tmuxline for tmux and vim-airline integration
Plug 'edkolev/tmuxline.vim'

"promptline for bash and vim-airline integration
Plug 'edkolev/promptline.vim'

"vim-arduino to use vim instead of the arduino IDE
Plug 'stevearc/vim-arduino'

" Initialize plugin system
call plug#end()

set tabstop=2
set shiftwidth=2
set expandtab

let fortran_free_source=1
let fortran_do_enddo=1
let fortran_more_precise=1
let fortran_have_tabs=1

set textwidth=0
set wrapmargin=0
set formatoptions-=tc

" set mouse=a

set nocompatible
set backspace=indent,eol,start

set hlsearch

set t_Co=256
set background=dark
colorscheme default

syntax on

au BufNewFile,BufRead *.rg set filetype=regent
au BufNewFile,BufRead *.t  set filetype=regent
au BufNewFile,BufRead *.keymap  set filetype=dts

set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:promptline_preset = {
        \'a' : [ promptline#slices#host(), promptline#slices#python_virtualenv() ],
        \'b' : [ promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd({ 'dir_limit':2}) ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ] }
let g:promptline_theme='airline'


" my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
function! ArduinoStatusLine()
  let port = arduino#GetPort()
  let line = '[' . g:arduino_board . '] [' . g:arduino_programmer . ']'
  if !empty(port)
    let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
  endif
  return line
endfunction
augroup ArduinoStatusLine
  autocmd! * <buffer>
  autocmd BufWinEnter <buffer> setlocal stl=%f\ %h%w%m%r\ %{ArduinoStatusLine()}\ %=\ %(%l,%c%V\ %=\ %P%)
augroup END

autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{ArduinoStatusLine()}'
