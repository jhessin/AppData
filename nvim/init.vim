" echo "🤜(👁️👄👁️)🤜"
" Use space as the leader key
let mapleader = " "

" Quick edit of vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" The default numberwidth of 4 is good but if I ever want to change it:
" set nuw=4

" Format Options {{{
" Always show line numbers and relative numbers
set rnu nu

" Keep wraping on and always wrap at a word
set wrap lbr

" hard wrap lines at 80 characters
set tw=80

set fo=tcqj " +t-rol
set fo=jcroql
" }}}

" vim:fdm=marker:fdl=0
