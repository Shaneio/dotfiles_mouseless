set clipboard+=unnamedplus           "vim access to system clipboard
set noswapfile                       "disables write protection on a copy
set number                           "enables line numbering
set autoindent                       "copies indent from previous lines
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set inccommand=nosplit               "show substitution

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
