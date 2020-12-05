syntax on
set number
set title

set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set rnu
set numberwidth=1
set noswapfile
set nobackup 
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors
set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgrey
set nocompatible

call plug#begin('~/.local/share/nvim/plugged')

"Themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'alessandroyorba/despacio'


"visual
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'zinit-zsh/zinit-vim-syntax'
Plug 'lilydjwg/colorizer'

"Funcionality
Plug 'scrooloose/nerdtree'

"Code modification
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'
Plug 'chiel92/vim-autoformat'
Plug 'sbdchd/neoformat'

call plug#end()

"       old theme
set background=dark
let ayucolor="dark"
let g:gruvbox_cotrast_dark="hard"
colorscheme ayu

"Mapeo de la barra de estado airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline_powerline_fonts = 1 " Modifica los separadores para que tengan forma de triangulos
let g:airline_theme='kolor'

"NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Mapeo del explorador de archivos
let g:NERDTreeChDirMode = 2 "Cambia el directorio actual al nodo padre actual
map <leader><tab> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''


