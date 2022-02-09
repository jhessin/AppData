" coc tab completion {{{
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ?
      \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
" }}}

" coc (goto) shortcuts {{{
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <F2> <Plug>(coc-rename)
" }}}
"
" disable mapping in go (handled by coc)
let g:go_def_mapping_enabled = 0
" Fix syntax highlight for Coc plugin floating errors {{{
hi CocErrorFloat guifg=Magenta guibg=Magenta
" }}}
"
" Other shortcuts {{{
nnoremap <silent><F6> <plug>(coc-diagnostic-info)<CR>
nnoremap <silent><F6> :CocList diagnostics<CR>
nnoremap <silent><F8> :call CocAction('diagnosticNext')<CR>
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
nnoremap <silent><leader>se :CocCommand snippets.editSnippets<CR>
nnoremap <silent><leader><CR> :CocAction<CR>

" Format conflict with ls shortcut
nmap <silent><leader>s   :CocCommand prettier.formatFile<CR>
" }}}

" Autocommands to run formatter on save {{{
augroup main
  autocmd BufWritePre * CocCommand prettier.formatFile
augroup END
" }}}

" Default extensions to load automatically {{{
let g:coc_global_extensions = [
      \ 'coc-actions',
      \ 'coc-css',
      \ 'coc-ember',
      \ 'coc-emmet',
      \ 'coc-eslint',
      \ 'coc-flutter',
      \ 'coc-go',
      \ 'coc-highlight',
      \ 'coc-html',
      \ 'coc-html-css-support',
      \ 'coc-json',
      \ 'coc-lists',
      \ 'coc-marketplace',
      \ 'coc-omnisharp',
      \ 'coc-prettier',
      \ 'coc-pyright',
      \ 'coc-rls',
      \ 'coc-rust-analyzer',
      \ 'coc-snippets',
      \ 'coc-solargraph',
      \ 'coc-tsserver',
      \ 'coc-vimlsp',
      \ ]
" }}}

" Use coc mapings from one filetype to another {{{
let g:coc_filetype_map = {
      \ 'html.handlebars': 'html',
      \ 'wxss': 'css',
      \ }
" }}}

" vim:foldmethod=marker:foldlevel=0
