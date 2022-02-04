" echo "🤜(👁️👄👁️)🤜"

" Breaking it down into files - these are my own "plugins"
let g:vim_home = get(g:, 'vim_home', expand('~/AppData/Local/nvim/'))

" Load all vim configs {{{
let config_list = [
  \ 'miniplugs/mappings.vim',
  \ 'miniplugs/plugged.vim',
  \ 'miniplugs/mappings.vim',
  \ 'miniplugs/abbreviations.vim',
  \ 'miniplugs/formatting.vim',
  \ 'miniplugs/autocommands.vim',
  \ ]
" }}}

" The actual iteration of the files {{{
for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor
" }}}


" vim:fdm=marker:fdl=0
