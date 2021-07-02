"NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Mapeo del explorador de archivos
map <leader><tab> :NERDTreeToggle<CR>

" let g:NERDTreeChDirMode = 2 "Cambia el directorio actual al nodo padre actual
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeMinimalUI = 1
let NERDTreeAutoCenter=1
let g:NERDTreeWinSize=34
" let NERDTreeShowLineNumbers=1

nnoremap <Tab> <C-w><C-w>

" Shift + i --> Show hidden files
" Ctrl + ww --> cambiar entre ventana y nerdtree
" C--> change tree root to selected dir
" u --> move tree root up a dir
" U -->  move tree root up a dir but leave old root open
