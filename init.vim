filetype plugin indent on
syntax on

au GUIEnter * simalt ~x
set nocompatible
set exrc
set number
set relativenumber
set hidden
set backspace=indent,eol,start
set hls
set guifont=Fixedsys:h20:cANSI:qDRAFT
set belloff=all
set is
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set incsearch
set scrolloff=8
set signcolumn=yes
set mouse=a

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {} 

call plug#begin()

Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'

call plug#end()
