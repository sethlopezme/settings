"------------------------------------------------------------------------------
" OPTIONS
"
" Full list of options:
" https://neovim.io/doc/user/options.html
"==============================================================================
" UI
"------------------------------------------------------------------------------
set cursorline                    " highlight the current line
set history=50                    " length of history for commands and searches
set incsearch                     " 
set number                        " show line numbers
set numberwidth=6                 " width for line numbers
set relativenumber                " show relative line number for each line
set ruler                         " show the cursor position
set scrolloff=5                   " leave n rows visible on vertical scroll
set showcmd                       " show (partial) command keys in status line
set showmatch                     " highlight matching brac(es|kets)
set sidescrolloff=5               " leave n rows visible on horizontal scroll
syntax on                         " enable syntax highlighting
filetype plugin indent on         " enable filetype detection, custom indents
"------------------------------------------------------------------------------
" EDITING
"------------------------------------------------------------------------------
set autoindent                    " use indentation from previous line
set autoread                      " reload files when they're changed
set backspace=indent,eol,start    " make backspace function normally
set expandtab                     " use soft tabs
set shiftwidth=2                  " number of spaces to use for autoindent
set smartindent                   " do smart indenting when starting a new line
set softtabstop=2                 " number of spaces to insert for <Tab>
set tabstop=2                     " space-width of <Tab>
"------------------------------------------------------------------------------
" BACKUP / SWAP
"------------------------------------------------------------------------------
set backup                        " make a backup before overwriting a file
" try these directories for making backups
set backupdir=./.backup/,~/.backup,.
" try these directories for swap files
set directory=./.swap//,~.swap//,.
set swapfile                      " use a swap file



"------------------------------------------------------------------------------
" AUTOCMD
"------------------------------------------------------------------------------
autocmd FileType text setlocal textwidth=78 spell



"------------------------------------------------------------------------------
" MAPPINGS
"------------------------------------------------------------------------------



"------------------------------------------------------------------------------
" PLUGINS
"------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'scwood/vim-hybrid'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'easymotion/vim-easymotion'
call plug#end()
" vim-hybrid
set background=dark
colorscheme hybrid
" vim-notes
let g:notes_directories=['~/.notes']
