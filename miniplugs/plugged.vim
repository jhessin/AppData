" This is the vimrc file that will be copied. If you want to add plugins or
" anything put them in here. Once you are done hit <Shift-ZZ> or :wq to
" continue.

set nocompatible " be iMproved, required
set pyxversion=3
let g:loaded_python_provider = 0
filetype off     " required

" Keep Plug commands between plug#begin() and plug#end(). {{{
call plug#begin()

" zsh syntax definition file
" Plug 'zplugin/zplugin-vim-syntax'

" Ruby plugins
" Plug 'janko/vim-test'             " Run Ruby and Elixir tests
" Plug 'nikolalsvk/vim-rails'       " Rails plugin
" Plug 'tpope/vim-endwise'          " Autocomplete end after a do
" Plug 'danchoi/ri.vim'             " Ri documentation inside vim

" Git tools
Plug 'airblade/vim-gitgutter'     " Show git diff of lines edited
Plug 'tpope/vim-fugitive'         " :Gblame
Plug 'tpope/vim-rhubarb'          " :GBrowse

" HTML tools
Plug 'mattn/emmet-vim'                  " Emmet templating engine
Plug 'KabbAmine/vCoolor.vim'            " Color picker
" Show RGB colors
" Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'joukevandermaas/vim-ember-hbs'    " Ember handlebars templating
Plug 'alvan/vim-closetag'               " Auto cloning html tags

" typescript/javascript tools
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'styled-components/vim-styled-components'
Plug 'neoclide/jsonc.vim'         " json syntax highlight w/ comments
Plug 'Quramy/vim-js-pretty-template' " syntax highlighting for Template Strings

" golang tools
" Plug 'fatih/vim-go'               " The standard golang plugin

" rust tools
" Plug 'rust-lang/rust.vim'
" Plug 'mattn/webapi-vim'           " Required for the RustPlay command

" dart tools
" Plug 'dart-lang/dart-vim-plugin'
"Plug 'natebosch/vim-lsc'
"Plug 'natebosch/vim-lsc-dart'

" Python tools
Plug 'plytophogy/vim-virtualenv'
" Plug 'lambdalisue/vim-pyenv'
" Plug 'davidhalter/jedi-vim'

" .NET tools
Plug 'OmniSharp/omnisharp-vim'

" Quality of Life tools
Plug 'gisphm/vim-gitignore'       " gitignore configuration
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'       " automatic closing of tags
Plug 'thinca/vim-template'        " a template engine
Plug 'MattesGroeger/vim-bookmarks' " a bookmark manager
Plug 'lbrayner/vim-rzip'          " edit inside zip files
Plug 'dockyard/vim-easydir'       " auto create and manage directories
Plug 'vitalk/vim-shebang'         " auto detect filetype by shebang line
Plug 'vim-scripts/vim-pipe'       " for running buffers through a command
Plug 'tpope/vim-surround'         " manage surrounding tokens ( i.e.: (')
Plug 'farmergreg/vim-lastplace'   " restore cursor position intelligently
Plug 'voldikss/vim-floaterm'      " a floating terminal
Plug 'vim-scripts/loremipsum'     " generate loremipsum text
Plug 'Chiel92/vim-autoformat'     " Autoformat various files
" Plug 'SirVer/ultisnips'           " Snippet management (may conflict with coc-snippets)
" Plug 'honza/vim-snippets'         " Some basic snippets to get started

" File Manager Plugins
Plug 'vifm/vifm.vim'              " vifm file manager plugin
Plug 'ptzz/lf.vim'                " lf file manager plugin

" Visual plugins
Plug 'vim-airline/vim-airline'    " Vim powerline
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'     " Extra colorschemes
Plug 'machakann/vim-highlightedyank' " Highlight yanked text

" Searching tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim
"Plug 'mileszs/ack.vim'            " Use ack in Vim

" Autocomplete tools
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
" Plug 'vim-syntastic/syntastic'
" Plug 'neomake/neomake'

" All of your Plugins must be added before the following line
call plug#end()              " required
filetype plugin indent on    " required
" }}}

" closetag configuration {{{
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.hbs'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.jsx,*.tsx,*.hbs'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'xml,html,xhtml,phtml,jsx,tsx,hbs'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,hbs'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ 'typescriptreact': 'jsxRegion,tsxRegion',
      \ 'javascriptreact': 'jsxRegion',
      \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" }}}

" vim-bookmarks mappings {{{
nnoremap <silent>mn :BookmarkNext<CR>
nnoremap <silent>mp :BookmarkPrev<CR>
nnoremap <silent>mm :BookmarkToggle<CR>
nnoremap <silent>ma :BookmarkAnnotate<CR>
nnoremap <silent>mA :BookmarkShowAll<CR>
nnoremap <silent>mc :BookmarkClear<CR>
" }}}

" Airline {{{
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1

" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 2
let g:airline_right_sep = ">"
let g:airline#extensions#tabline#alt_sep = 1

" Switch between buffers as if they were tabs
nnoremap <silent>gt :bn<CR>
nnoremap <silent>gT :bp<CR>
nnoremap ge :e<space>
" }}}

" Tab (the window) options {{{
"set showtabline=2
"nnoremap <silent>gn :tabnew<CR>
"nnoremap ge :tabe<space>
" }}}

" allow tab to jump between panes {{{
nnoremap <tab> <c-w><c-w>
" }}}

" Enable Mouse mode in all modes {{{
set mouse=a
" }}}

" line numbers {{{
set number
set numberwidth=4
set ruler
" }}}

" paste mode {{{
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode
" }}}

" Treat long lines as break lines {{{
map j gj
map k gk

" unmap arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Increment and decrement number easier
nnoremap <up> <C-a>
nnoremap <down> <C-x>
" }}}
"
" Rust.vim settings {{{
" Autoformat rust files on save
let g:rustfmt_autosave = 1
" }}}

" Hexokinase corolize options {{{
let g:Hexokinase_highlighters = [
      \ 'virtual',
      \ 'sign_column',
      \ ]
      "\ 'background',
      "\ 'backgroundfull',
      "\ 'foreground',
      "\ 'foregroundfull',
" }}}

" vCoolor settings {{{
let g:vcoolor_lowercase = 1
let g:vcoolor_disable_mappings = 1
"let g:vcoolor_map = '<leader>c'
nnoremap <silent><leader>c :VCoolor<CR>
" }}}

" Indentation {{{
set autoindent
set cindent
set smartindent
" }}}

" Folding {{{
" Enable folding
set foldmethod=syntax
set foldlevel=99
" }}}

" Disable all bells and whistles {{{
set noerrorbells visualbell t_vb=
" }}}

" Ack tricks (don't know what dis does so disabled for now) --disabled-- {{{
"let g:ackprg = 'ag --vimgrep'
"nmap <leader>a :Ack! ""<Left>
"nmap <leader>A :Ack! "\b<cword>\b"<CR>
"" }}}

" Tab (indenting) Options {{{
set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
set expandtab
set showbreak=↪\
set list
set listchars=tab:\|\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
" }}}

" TODO use a plugin for this?
" Delete empty space from the end of lines on every save {{{
augroup prewrites
  au!
  au BufWritePre * :Autoformat
  " au BufWrite $MYVIMRC           so $MYVIMRC
  " au BufWrite $MYVIMRC           e %
augroup END
" }}}

" Dart configuration {{{
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
let g:lsc_auto_map = v:true
let g:dartfmt_options = ['--fix']
" }}}

" Set default encoding to utf-8 {{{
set encoding=utf-8
set termencoding=utf-8
" }}}

" Disable swap files {{{
set noswapfile
" }}}

" searching smartcase {{{
set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases
set infercase  " Infer case for completion
set nohlsearch " Don't highlight search term
set incsearch  " Jumping search
" }}}

" Always show the status line {{{
set laststatus=2
" }}}

" Allow copy and paste from system clipboard {{{
set clipboard=unnamed
set clipboard+=unnamedplus  " Use standard clipboard for yank and paste
" }}}

" Spellcheck for features and markdown {{{
au BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.md.erb setlocal spell
au BufRead,BufNewFile *.feature setlocal spell
" }}}

" Delete characters outside of insert area --disabled-- {{{
"set backspace=indent,eol,start
" }}}

" +++ Shortcuts +++ {{{
" Open Buffers
nnoremap <silent><leader>b :Buffers<CR>
" Open Tab
nnoremap <silent><leader>t :tabs<CR>
" Open test file for a current file
nnoremap <silent><leader>s :A<CR>
" Open test file for a current file in a vertical window
nnoremap <silent><leader>v :AV<CR>
" Vertically split screen
nnoremap <silent><leader>\ :vs<CR>
" Split screen
nnoremap <silent><leader>/ :split<CR>
" }}}

" Faster saving and exiting {{{
nnoremap <silent><leader>w :w!<CR>
nnoremap <silent><c-s> :w!<CR>
nnoremap <silent><leader>q :wq!<CR>
nnoremap <silent><c-q> :wq!<CR>
nnoremap <silent><leader>x :x<CR>
" Open Vim configuration file for editing
nnoremap <silent><leader>ev :e $MYVIMRC<CR>
command! Vimconfig e $MYVIMRC
" Open aliases and other config files
command! Aliasconfig e ~/.aliases
command! Zprofile e ~/.zprofile
command! Zshrc e ~/.zshrc
command! Zimrc e ~/.zimrc
command! Gitconfig e ~/.gitconfig
" Source Vim configuration file and install plugins
nnoremap <silent><leader>es :source $MYVIMRC \| :PlugClean \| :PlugInstall<CR>
" }}}

" Toggle relative line numbers {{{
nnoremap <leader>rn :set relativenumber!<cr>
" }}}

" Autoformat options {{{
set formatoptions-=r
set formatoptions-=o
let g:autoformat_autoindent = 0
let g:autoformat_retab = 1
" }}}

" jedi options {{{
let g:jedi#force_py_version = '3.10.0'
" }}}

" If fzf installed using git {{{
set rtp+=~/.fzf
" Map fzf search to CTRL F
nnoremap <C-f> :GFiles<Cr>
nnoremap <F3> :Autoformat<CR>
" Map fzf + ag search to CTRL P --disabled--
"nnoremap <C-g> :Ag <Cr>
" }}}

" vim-test shortcut for running tests --Disabled-- {{{
"nnoremap <silent><leader>; :TestNearest<CR>
"nnoremap <silent><leader>' :TestFile<CR>
" }}}

" Easier movement between split windows CTRL + {h, j, k, l} {{{
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" }}}

" Syntastic settings {{{
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

nnoremap <silent><F8> :lnext<CR>
nnoremap <silent><F20> :lprev<CR>
" }}}

" CoC settings {{{

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
" disable mapping in go (handled by coc)
let g:go_def_mapping_enabled = 0
" Fix syntax highlight for Coc plugin floating errors {{{
hi CocErrorFloat guifg=Magenta guibg=Magenta
" }}}
"
nnoremap <silent><F6> <plug>(coc-diagnostic-info)<CR>
nnoremap <silent><F6> :CocList diagnostics<CR>
nnoremap <silent><F8> :call CocAction('diagnosticNext')<CR>
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
nnoremap <silent><leader>se :CocCommand snippets.editSnippets<CR>
nnoremap <silent><leader><CR> :CocAction<CR>

" Format conflict with lf shortcut
nmap <silent><leader>s   :CocCommand prettier.formatFile<CR>
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

let g:coc_filetype_map = {
      \ 'html.handlebars': 'html',
      \ 'wxss': 'css',
      \ }

" }}}

" OmniSharp Settings {{{
let g:OmniSharp_want_snippet = 1
" }}}

" " Neomake settings {{{
" " When writing a buffer (no delay).
" call neomake#configure#automake('w')
" " When writing a buffer (no delay), and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)
" " When reading a buffer (after 1s), and when writing (no delay).
" call neomake#configure#automake('rw', 1000)
" " Full config: when writing or reading a buffer, and on changes in insert and
" " normal mode (after 500ms; no delay when writing).
" call neomake#configure#automake('nrwi', 500)

" " Show the location/quickfix list
" let g:neomake_open_list = 2
" " highlight error lines
" let g:neomake_highlight_lines = 1
" " }}}

" vim-go settings {{{
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" }}}

" Fix some weird error with Fugitive {{{
let g:fugitive_pty = 0
" }}}

" Change cursor to solid vertical line {{{
" There are problems with Vim's floating window setting cursor to a solid
" block. So these lines below are resetting it to a solid vertical line.
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[6 q"
" }}}

" Optionally reset the cursor on start: Now using a plugin! {{{
"augroup myCmds
"au!
"au BufReadPost *
      "\ if line("'\"") > 0 && line("'\"") <= line("$") |
      "\   exe "normal! g`\"" |
      "\ endif
"augroup END
" }}}


" Template settings {{{
" Load template keywords
autocmd User plugin-template-loaded call s:template_keywords()
function! s:template_keywords()
  %s/<+FILENAME+>/\=expand('%:r')/ge
  %s/<+DATE+>/\=strftime('%Y-%m-%d %H:%M:%S%z')/ge
endfunction
" }}}

" This puts backups in a temporary directory instead of with the files. {{{
set backupdir=~/.tmp/vim-backup-dir"
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), 'p')
endif
set writebackup
set backup
" }}}

" global undo file {{{
set undofile undodir=~/.tmp/undo
if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif
" }}}

" modeline settings {{{
set modelines=1
set modelineexpr
" }}}

" Look and Feel settings {{{
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
set tw=79                   " Set word wrap at 79 characters
set wrap                    " wrap long lines
set showcmd                 " show command in bottom bar
set cursorline              " highlight the current line
hi CursorLine cterm=underline
hi MatchParen guifg=red
set shiftround              " round to the nearest shiftstop
set showmatch               " highlight matching [{()}]
set diffopt+=vertical       " Show diffs side by side
" }}}

nnoremap <expr> q (&readonly ? ':q<CR>' : 'q')

" vim:foldmethod=marker:foldlevel=0
