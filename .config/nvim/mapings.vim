
" ███╗   ███╗ █████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
" ████╗ ████║██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
" ██╔████╔██║███████║██████╔╝██████╔╝██║██╔██╗ ██║██║  ███╗███████╗
" ██║╚██╔╝██║██╔══██║██╔═══╝ ██╔═══╝ ██║██║╚██╗██║██║   ██║╚════██║
" ██║ ╚═╝ ██║██║  ██║██║     ██║     ██║██║ ╚████║╚██████╔╝███████║
" ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
"
"By: https://github.com/SoyTonyRodriguez"

"Tecla lider
let mapleader = " "

"Modo normal
:imap ,, <Esc>

"No usar las flechas de direccion
noremap <up> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <down> <nop>

"Guardar archivo
nnoremap <leader>w :w<CR>
"Salir de nvim
nnoremap <leader>q :q<CR>

"Quitar resaltado de busqueda
nnoremap <silent> <leader>n :nohlsearch<CR>

" Moverse al buffer siguiente
nnoremap <leader>k :bnext!<CR>

" Moverse al buffer anterior
nnoremap <leader>j :bprevious!<CR>

" Cerrar el buffer actual
nnoremap <leader>d :bdelete<CR>

"crear una nueva ventana
nnoremap <leader>t :tabe<CR>

inoremap <C-e> <C-o>A
