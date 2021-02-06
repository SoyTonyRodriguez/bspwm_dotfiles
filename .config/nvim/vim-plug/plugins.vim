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
Plug 'kjwon15/vim-transparent'
Plug 'leafgarland/typescript-vim'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'wfxr/minimap.vim'

"Funcionality
Plug 'scrooloose/nerdtree'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-surround'
Plug 'KabbAmine/vCoolor.vim' "Shortcut <alt-c>
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'},

"Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Code modification
Plug 'kovetskiy/sxhkd-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'chiel92/vim-autoformat'
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'artur-shaik/vim-javacomplete2'

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
call plug#end()

nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
