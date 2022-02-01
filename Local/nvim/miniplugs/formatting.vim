
" Format Options {{{
" See ':h fo-table' for more info on these options.
" Always show line numbers and relative numbers
set rnu nu

" The default numberwidth of 4 is good but if I ever want to change it:
" set nuw=4

" Keep wraping on and always wrap at a word
set wrap lbr

" hard wrap lines at 80 characters
set tw=80

" Do Auto-wrap text using textwidth
set fo+=t

" Do Auto-wrap comments using textwidth, inserting the current comment leader
" automatically.
set fo+=c

" Do NOT Automatically insert the current comment leader after hitting <Enter>
" in Insert mode.
set fo-=r

" Do NOT Automatically insert the current comment leader after hitting 'o' or
" 'O' in Normal mode.
set fo-=o

" Do Allow formatting of comments with "gq".
set fo+=q

" Automatically format paragraphs - this can be usefull for prose but doesn't
" work well with code so we add the c flag as well so it only works with
" comments this also messes up git commits so I'm disabling it for now: 
" set fo+=a
set fo+=c

" Do remove comment leaders when joining lines
set fo+=j

" }}}

" vim:fdm=marker:fdl=0
