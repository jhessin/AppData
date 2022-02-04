iabbrev <buffer> fnmain fn main() {}
iabbrev <buffer> excr extern crate
iabbrev <buffer> puse pub use
let b:vimpipe_command="cargo watch -cx clippy"
set tabstop=2
set shiftwidth=2

"au FileType rust nmap <buffer> gd           <Plug>(rust-def)
au FileType rust nmap <buffer> g/           <Plug>(rust-def-split)
au FileType rust nmap <buffer> g\           <Plug>(rust-def-vertical)
"au FileType rust nmap <buffer> gt           <Plug>(rust-def-tab)
au FileType rust nmap <buffer> <leader>gd   <Plug>(rust-doc)

au BufWritePre,FileWritePre *.rs RustFmt

nnoremap <silent><localleader>f  :Cargo fix
