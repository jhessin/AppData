" -- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding with JS syntax
set foldlevelstart=99 "start file with all folds opened
set foldlevel=99
nnoremap <silent> <localleader>r :w<CR>:! yarn node %<CR>
let b:vimpipe_command='jslint <(cat)'

" vim:foldmethod=marker:foldlevel=0
