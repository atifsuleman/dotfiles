" Use Vim settings, rather than Vi settings
" This must be first, becuase it changes other options as a side effect
set nocompatible

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show filename in the window title bar
set title

" Set line numbers on
set number

" Show the cursor position all the time
set ruler

" Set color for column 120
set colorcolumn=120

" Keep 1000 lines of command line history
set history=1000

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Bash scripts use 4 spaces for tab
  autocmd FileType sh setlocal sts=4 sw=4 expandtab
endif

" Using the default leader key of backslash '\'

" Disable the arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Set spell checking region to British English
set spelllang=en_gb

" Shortcut to toggle spell checking on and off
nmap <silent> <leader>s :set spell!<CR>
