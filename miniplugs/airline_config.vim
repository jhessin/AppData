" Airline {{{
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1

" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 2
let g:airline_right_sep = ">"
let g:airline#extensions#tabline#alt_sep = 1

" Switch between buffers as if they were tabs
nnoremap <silent>gt :bn<CR>
nnoremap <silent>gT :bp<CR>
nnoremap ge :e<space>
" }}}

" vim:foldmethod=marker:foldlevel=0
