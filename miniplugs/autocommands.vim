
" The main autocommand group {{{
augroup main
au!
" Put autocommands here
" or always add them to the main group so they will be cleaned out here.
autocmd BufNew,BufRead *.xaml setfiletype xml
augroup END
" }}}
