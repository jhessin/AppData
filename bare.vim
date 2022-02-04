" echo "🤜(👁️👄👁️)🤜"

" Breaking it down into files - these are my own "plugins" {{{
let g:vim_home = get(g:, 'vim_home', expand('~/AppData/Local/nvim/'))

" Load all vim configs {{{
let config_list = [
  \ 'miniplugs/mappings.vim',
  \ 'miniplugs/abbreviations.vim',
  \ 'miniplugs/formatting.vim',
  \ 'miniplugs/autocommands.vim',
  \ ]
" }}}

for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor

" exec 'source' g:vim_home . '/miniplugs/mappings.vim'
" exec 'source' g:vim_home . '/miniplugs/abbreviations.vim'
" exec 'source' g:vim_home . '/miniplugs/formatting.vim'
" }}}


" vim:fdm=marker:fdl=0
