set formatexpr=xmlformat#Format()

command! -range=% FormatXML <line1>,<line2>call xmlformat#Format()

augroup Formatter
  autocmd!
  autocmd BufWritePre *.xml,*.xaml FormatXML 
augroup END
