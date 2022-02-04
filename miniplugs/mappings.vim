" Clear all mappings for a clean slate!
mapclear

" Leaders {{{
" Use space as the leader key
let mapleader = " "

" ',' will be the localleader
let maplocalleader = ","
"}}}

" Examples {{{

" move lines with ctrl-arrow keys (needs adjusting)
" nnoremap <c-up> ddkP
" nnoremap <c-down> ddp

" <c-u> converts current word to uppercase
" inoremap <c-u> <esc>viwU<esc>ea 
" nnoremap <c-u> viwU<esc>e 

" }}}

" Quick edit/source of vimrc
nnoremap <silent><leader>ev :vs $MYVIMRC<cr>
nnoremap <silent><leader>sv :source $MYVIMRC<cr>

" disable arrow keys in normal mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" disable arrow keys in insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" always do global moves
noremap j gj
noremap k gk

noremap H g^
noremap L g$

" map tab to move between windows
nnoremap <tab> <c-w><c-w>

" map gt to Goto next Tab(buffer)
" gf is already Goto highlighted File
nnoremap <silent>gt :bn<cr>

" vim:fdm=marker:fdl=0
