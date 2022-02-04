function Check()
  set modifiable
  execute "normal!f_ciwxxxxx"
  set nomodifiable
endfunction

function Uncheck()
  set modifiable
  execute "normal!fxciw_____"
  set nomodifiable
endfunction

function Undo()
  set modifiable
  execute "normal!u"
  set nomodifiable
endfunction

function Redo()
  set modifiable
  execute "normal!\<c-r>"
  set nomodifiable
endfunction

 nnoremap x :call Check()<cr>
 nnoremap c :call Uncheck()<cr>
 nnoremap u :call Undo()<cr>
 nnoremap <c-r> :call Redo()<cr>

 nnoremap j jz.
 nnoremap k kz.
 set nospell
 set nomodifiable
