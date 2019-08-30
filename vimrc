"------------ Compatibility ------------"
set nocompatible    " turn off vi compatibility
set noexrc          " don't use ~/.exrc config

"---------- Personal preference ----------"
nnoremap Y y$                   " make Y consistent with D & C
set backspace=indent,eol,start  " backspace behaves 'normally'
let mapleader = ','             " , is simpler leader key
inoremap jk <Esc>               " jk to escape insert mode

"---------- Appearance ----------"
syntax on                           " enable syntax highlighting
set relativenumber                  " show relative line numbers
set number                          " show absolute line number on selected line
hi LineNr ctermfg=242 cterm=none    " set non-yellow line numbers (visibility)
set ruler                           " show file stats
set t_Co=16                         " set color depth
set synmaxcol=2048                  " disable syntax highlighting on super-long lines
set laststatus=2                    " always show status bar

"---------- Settings ----------"
set belloff=all         " no flashing in vim
set undolevels=1000     " history depth
set mouse=a             " enable mouse clicks
set formatoptions-=cr   " use unix line endings
set scrolloff=3         " keep the cursor 3 lines from top/bottom while scrolling

"---------- Search ----------"
set incsearch   " search while typing
set hlsearch    " highlight all search matches
set ignorecase  " ignore case in searches
set smartcase   " unless capitals are included in search

"---------- Whitespace ----------"
set wrap            " wrap long lines
filetype plugin indent on
set autoindent      " auto-indent
set smartindent     " better auto-indent
nnoremap - :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>  " Remove all trailing whitespace by pressing -

"---------- Mappings  ----------"
"" opens a new tab with the vimrc
nmap <leader>ev :tabedit $MYVIMRC<cr>


"---------- Auto-commands --------"

"Automatically source the Vimrc on save
augroup auto-source
   autocmd!
   autocmd BufWritePost .vimrc source %
augroup END
