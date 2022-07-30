" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'             "allows to close buffers without closing window :Bdelete
    Plug 'simeji/winresizer'         "alternative to resizing windows
    Plug 'junegunn/fzf.vim'          "brings fuzzy finder to neovim
    Plug 'simnalamburt/vim-mundo'    "provides a way of interacting with the undo tree

call plug#end()

set clipboard+=unnamedplus           "vim access to system clipboard

set hidden                           "disables save warnings on hidden files
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

nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

" Config for chrisbra/csv.vim
augroup filetype_csv
    autocmd!

    autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END

" Config for Winresizer
let g:winresizer_start_key = "<leader>w"
