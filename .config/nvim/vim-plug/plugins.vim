
" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝

"By: https://github.com/SoyTonyRodriguez"

call plug#begin('~/.local/share/nvim/plugged')

"_-_-_-_-_-_-_-_-_-_- Themes _-_-_-_-_-_-_-_-_-_-
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  "syntax code
Plug 'bignimbus/pop-punk.vim'              "The best theme for neovim <3

"_-_-_-_-_-_-_-_-_-_- Visual _-_-_-_-_-_-_-_-_-_-
Plug 'yggdroot/indentline'                 "Vertical lines for code with spaces
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'      "Themes for airline
Plug 'ryanoasis/vim-devicons'              "Icons for the plugins
Plug 'lilydjwg/colorizer'                  "Colorize all text in the form rgb, etc.
Plug 'kovetskiy/sxhkd-vim'                 "Syntax for sxhkd

"_-_-_-_-_-_-_-_-_-_- Funcionality _-_-_-_-_-_-_-_-_-_-
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'                     "File explorer (ctrl + p)
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-surround'                   "Fast change parentheses, brackets, etc.
Plug 'KabbAmine/vCoolor.vim'                "Color selector (Shortcut <alt-c>(hex))
Plug 'vim-python/python-syntax'
Plug 'tpope/vim-commentary'                 "Fast comment with (gcc)
Plug 'terryma/vim-multiple-cursors'         "Multiple cursor to edit code (ctrl + n)
Plug 'preservim/tagbar'                     "A class outline viewer for Vim (<BS>)(Need install ctags)
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'Lenovsky/nuake'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
"_-_-_-_-_-_-_-_-_-_- Git integration _-_-_-_-_-_-_-_-_-_-
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"_-_-_-_-_-_-_-_-_-_- Code modification _-_-_-_-_-_-_-_-_-_-
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Better code autocompletion
Plug 'sheerun/vim-polyglot'                     "A collection of language packs for Vim
Plug 'jiangmiao/auto-pairs'                     "Insert or delete brackets, parens, quotes in pair
Plug 'othree/html5.vim', { 'for': 'html' }

"_-_-_-_-_-_-_-_-_-_- Python autocomplete _-_-_-_-_-_-_-_-_-_-
Plug 'davidhalter/jedi-vim'

Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
" Fast python completion (use ncm2 if you want type info or snippet support)
Plug 'HansPinckaers/ncm2-jedi'
" Words in buffer completion
Plug 'ncm2/ncm2-bufword'
" Filepath completion
" Plug 'ncm2/ncm2-path'

call plug#end()

