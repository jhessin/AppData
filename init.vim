" echo "🤜(👁️👄👁️)🤜"
" Get settings from ./miniplugs/plugged_full.vim

" Breaking it down into files - these are my own "plugins"
let g:vim_home = get(g:, 'vim_home', expand('~/AppData/Local/nvim/'))

" after/ftplugin/vim.vim

" Load all vim configs {{{
let config_list = [
  \ 'miniplugs/autocommands.vim',
  \ 'miniplugs/mappings.vim',
  \ 'miniplugs/plugged.vim',
  \ 'miniplugs/airline_config.vim',
  \ 'miniplugs/coc_settings.vim',
  \ 'miniplugs/interface.vim',
  \ 'miniplugs/mappings.vim',
  \ 'miniplugs/abbreviations.vim',
  \ 'miniplugs/formatting.vim',
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
