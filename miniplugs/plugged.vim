" This is the vimrc file that will be copied. If you want to add plugins or
" anything put them in here. Once you are done hit <Shift-ZZ> or :wq to
" continue.

set nocompatible " be iMproved, required
set pyxversion=3
let g:loaded_python_provider = 0
filetype off  " required

" Keep Plug commands between plug#begin() and plug#end(). {{{
call plug#begin()

" Git tools
Plug 'airblade/vim-gitgutter'   " Show git diff of lines edited
" Plug 'tpope/vim-fugitive'     " :Gblame
" Plug 'tpope/vim-rhubarb'     " :GBrowse

" HTML tools
Plug 'mattn/emmet-vim'   " Emmet templating engine
Plug 'KabbAmine/vCoolor.vim'  " Color picker
Plug 'joukevandermaas/vim-ember-hbs' " Ember handlebars templating
Plug 'alvan/vim-closetag'  " Auto cloning html tags

" typescript/javascript tools
Plug 'pangloss/vim-javascript'   " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'   " GraphQL syntax
Plug 'styled-components/vim-styled-components'
Plug 'neoclide/jsonc.vim'   " json syntax highlight w/ comments
Plug 'Quramy/vim-js-pretty-template' " syntax highlighting for Template Strings

" .NET tools
Plug 'OmniSharp/omnisharp-vim'

" Quality of Life tools
" Plug 'gisphm/vim-gitignore'   " gitignore configuration (Doesn't work in
                                " windows)
Plug 'tpope/vim-commentary'     " Comment stuff out (commentary.txt)
Plug 'jiangmiao/auto-pairs'     " automatic closing of tags (AutoPairs.txt)
Plug 'thinca/vim-template'     " a template engine (template.txt)
Plug 'MattesGroeger/vim-bookmarks'  " a bookmark manager (bookmarks.txt)
Plug 'lbrayner/vim-rzip'     " edit inside zip files
Plug 'dockyard/vim-easydir'     " auto create and manage directories (easydir.txt)
Plug 'vitalk/vim-shebang'     " auto detect filetype by shebang line
Plug 'vim-scripts/vim-pipe'     " for running buffers through a command (vim-pipe.txt)
Plug 'tpope/vim-surround'     " manage surrounding tokens (surround.txt)
Plug 'farmergreg/vim-lastplace'     " restore cursor position intelligently
" Plug 'voldikss/vim-floaterm'     " a floating terminal (floaterm.txt)
Plug 'vim-scripts/loremipsum'     " generate loremipsum text (loremipsum.txt)
Plug 'Chiel92/vim-autoformat'     " Autoformat various files
" Plug 'SirVer/ultisnips'       " Snippet management (conflicts with coc-snippets)
Plug 'honza/vim-snippets'     " Some basic snippets to get started

" File Manager Plugins
Plug 'vifm/vifm.vim'    " vifm file manager plugin
" Plug 'ptzz/lf.vim'      " lf file manager plugin

" Visual plugins
Plug 'vim-airline/vim-airline'   " Vim powerline
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'   " Extra colorschemes
Plug 'machakann/vim-highlightedyank' " Highlight yanked text

" Searching tools
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'    " Set up fzf and fzf.vim

" Autocomplete tools
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
" Plug 'vim-syntastic/syntastic'
" Plug 'neomake/neomake'

" All of your Plugins must be added before the following line
call plug#end()       " required
filetype plugin indent on    " required
" }}}

" vim:foldmethod=marker:foldlevel=0
