
" ███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗
" ██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝
" ███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗
" ╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║
" ███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║
" ╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
"
"By: https://github.com/SoyTonyRodriguez"

syntax on
filetype plugin indent on
set number                  " Show line numbers
set title                   " Set terminal title
set encoding=UTF-8
set mouse=a                 " Copy selected text with mouse to system clipboard
set noerrorbells
set sw=2
set expandtab               " Spaces on tabs
set smartindent             " Indentation
set rnu
set numberwidth=1
set noswapfile              " Don't create swapfiles for new buffers
set nobackup                " Don't use backup files
set incsearch               " Set incremental search, like modern browsers
set ignorecase              " Case insensitive searching
set clipboard=unnamedplus   " Make copy work with system clipboard
set cursorline              " Highlight current line
set termguicolors           " Enable true colors support
set colorcolumn=120
set showbreak=↪
set autoindent              " Automatically set indent of new line

highlight ColoColumn ctermbg=0 guibg=lightgrey
set nocompatible
set list
set listchars=tab:┊\
filetype plugin indent on " enable detection, plugins and indents
set completeopt=menuone,noinsert,noselect " better autocomplete options

" _-_-_-_-_-_-_-_-_- Experimental _-_-_-_-_-_-_-_-_-_-_-_
set foldmethod=syntax
set nofoldenable
set foldlevel=4
set foldtext=MyFoldText()

function! MyFoldText()
    let line = getline(v:foldstart)
    let folded_line_num = v:foldend - v:foldstart
    let line_text = substitute(line, '^"{\+', '', 'g')
    let fillcharcount = &textwidth - len(line_text) - len(folded_line_num)
    return '+'. repeat('-', 4) . line_text . repeat('.', fillcharcount) . ' (' . folded_line_num . ' L)'
endfunction


