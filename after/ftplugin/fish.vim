" Set up :make to use fish for syntax checking
compiler fish

let b:vimpipe_command="fish"
" Set this to have long lines wrap inside comments.
setlocal textwidth=79

" Enable folding of block structures in fish.
setlocal foldmethod=expr
