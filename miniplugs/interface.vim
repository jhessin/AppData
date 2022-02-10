" Use the mouse!
" set mouse=a
let &mouse='a'

" Indentation {{{
let &autoindent = 1
let &cindent = 1
let &smartindent = 1
" }}}

" searching smartcase {{{
let &ignorecase = 1 " Ignore case when searching
let &smartcase = 1  " When searching try to be smart about cases
let &infercase = 1  " Infer case for completion
let &hlsearch = 0 " Don't highlight search term
let &incsearch = 1  " Jumping search
" }}}
"
" Use standard clipboard {{{
let &clipboard="unnamedplus"
" }}}" vim:fdm=marker:fdl=0
