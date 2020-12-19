syntax on
filetype plugin indent on
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
Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'bluz71/vim-moonfly-colors'

Plug 'bignimbus/pop-punk.vim'

"visual
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'zinit-zsh/zinit-vim-syntax'
Plug 'lilydjwg/colorizer'

"Funcionality
Plug 'scrooloose/nerdtree'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-surround'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


"Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Code modification
Plug 'kovetskiy/sxhkd-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'
Plug 'chiel92/vim-autoformat'
Plug 'sbdchd/neoformat'

call plug#end()

let mapleader = " "

noremap <up> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <down> <nop>

nnoremap <leader>w :w<CR> 
nnoremap <leader>q :q<CR>
" Moverse al buffer siguiente con <líder> + k
nnoremap <leader>k :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + d
nnoremap <leader>d :bdelete<CR>
:imap ,, <Esc>

"crear una nueva ventana
nnoremap <leader>t :tabe<CR>

nmap <silent> gb <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-references)


"highlightedyank
let g:highlightedyank_highlight_duration = 1000
let g:highlightedyank_highlight_duration = -1

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

" Set up :make to use fish for syntax checking.
"compiler fish
"setlocal fonldmethod=expr
"
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'


" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" If you like colors instead
highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00



" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
" colorscheme moonfly  " Or whatever colorscheme you make
colorscheme pop-punk
let g:airline_section_c = '🎸 %F'

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

