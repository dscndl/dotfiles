set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
Plugin 'VundleVim/Vundle.vim'
" Autocomplete for python
Plugin 'davidhalter/jedi-vim'
" Remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreeforty/lessspace.vim'
" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on

set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)
set laststatus=2
set updatetime=500
"set completeopt=menuone,preview,noinsert
let g:gitgutter_max_signs=10000

imap jk <Esc>

syntax enable
set number showmatch
set nowrap  " No dividir la línea si es muy larga

"set relativenumber

set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres
set wildmenu
set noswapfile
set nobackup
set noshowmode
set ruler
set incsearch

noremap <F3> :set hlsearch!<CR>

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  autoindent " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

"set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
"set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

set termguicolors  " Activa true colors en la terminal
set background=dark  " Fondo del tema: light o dark
colorscheme gruvbox  " Nombre del tema

let mapleader = ' '

nnoremap <leader>s :w<CR>

nnoremap <leader>e :e $MYVIMRC<CR>

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

noremap <Leader>t :NERDTreeToggle<CR>
noremap <leader>x :! python3 %<CR>

noremap <leader>sv :vsplit<cr>
noremap <leader>sh :split<cr>
noremap <leader>Q :wq<cr>

set encoding=utf-8

let g:indentline_enabled = 1
