let b:vimpipe_command="multimarkdown | lynx -dump -stdin"
" let b:vimpipe_command="multimarkdown"
" let b:vimpipe_filetype="html"
let g:autoformat_autoindent = 0

nnoremap <localleader>l :InstantMarkdownPreview<CR>
nnoremap <localleader>s :InstantMarkdownStop<CR>

set spell
set noautoindent
set fo=jtcql
