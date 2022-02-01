" Clear all mappings for a clean slate!
mapclear

" Leaders {{{
" Use space as the leader key
let mapleader = " "

" ',' will be the localleader
let maplocalleader = ","
"}}}

" Quick edit/source of vimrc
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" move lines with ctrl-arrow keys (needs adjusting)
" nnoremap <c-up> ddkP
" nnoremap <c-down> ddp

" <c-u> converts current word to uppercase
" inoremap <c-u> <esc>viwU<esc>ea 
" nnoremap <c-u> viwU<esc>e 

" map tab to move between windows
nnoremap <tab> <c-w><c-w>

" map gt to Goto next Tab(buffer)
" gf is already Goto highlighted File
nnoremap gt :bn<cr>

" vim:fdm=marker:fdl=0
