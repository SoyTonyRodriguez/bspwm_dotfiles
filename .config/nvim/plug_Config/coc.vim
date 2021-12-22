" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Coc mapings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ga <Plug>(coc-codeaction)
nmap <silent> <leader>f <Plug>(coc-format)
nmap <silent> <leader>r <Plug>(coc-rename)
nmap <silent><leader><tab> :CocCommand explorer<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Do default action for next item.
"nnoremap <silent><nowait><space>l  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait><space>h  :<C-u>CocPrev<CR>

" Explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Color for highlight
autocmd ColorScheme * highlight CocHighlightText ctermfg=41 ctermbg=0 guifg=#0ed839 guibg=#102015

" Define Error Symbols and colors
let g:coc_status_warning_sign = ''
let g:coc_status_error_sign = ''
hi CocWarningSign ctermfg=blue 
hi CocErrorSign ctermfg=red
hi CocInfoSign ctermfg=yellow
hi CocHintSign ctermfg=green
" Transparent popup window
hi! Pmenu ctermbg=black
hi! PmenuSel ctermfg=2
hi! PmenuSel ctermbg=0
" Brighter line numbers
hi! LineNr ctermfg=NONE guibg=NONE



" nnoremap <space>e :CocCommand explorer<CR>
" nnoremap <space>i <C-w><C-w>

nnoremap <Tab> <C-w><C-w>

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

let g:coc_global_extensions = [
        \ 'coc-css',
        \ 'coc-json',
        \ 'coc-tsserver',
        \ 'coc-git',
        \ 'coc-eslint',
        \ 'coc-tslint-plugin',
        \ 'coc-pairs',
        \ 'coc-sh',
        \ 'coc-vimlsp',
        \ 'coc-emmet',
        \ 'coc-prettier',
        \ 'coc-ultisnips',
        \ 'coc-explorer',
        \ 'coc-diagnostic',
        \ 'coc-highlight'
        \ ]


