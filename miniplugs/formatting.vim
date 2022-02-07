
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

" Old Look and Feel settings {{{
syntax enable
set background=dark
set termguicolors
colorscheme solarized8_dark
"colorscheme 1989
" add .vimrc_background file
"if filereadable(expand("~/.vimrc_background"))
"let base16colorspace=256
"source ~/.vimrc_background
"endif
set wildmenu " when opening a file with e.g. :e ~/.vim<TAB> there is a graphical menu of all the matches
set ttyfast
set lazyredraw
set updatetime=300
set hidden " Open other files if current one is not saved
set inccommand=split        " highlight substitute searches
set showcmd                 " show command in bottom bar
set cursorline              " highlight the current line
hi CursorLine cterm=underline
hi MatchParen guifg=red
set shiftround              " round to the nearest shiftstop
set showmatch               " highlight matching [{()}]
set diffopt+=vertical       " Show diffs side by side
" }}}

" Tab (indenting) Options {{{
set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
set expandtab
set showbreak=↪\
set list
set listchars=tab:\|\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
" }}}
"
" }}}

" vim:fdm=marker:fdl=0
