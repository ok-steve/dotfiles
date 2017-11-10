" Use Vim settings, rather than Vi (must come first)
set nocompatible

" Make backspace behave in a sane manner
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Turn on Pathogen
execute pathogen#infect()

" Color schemes
colorscheme base16-solarized

if has('gui_running')
  set background=dark
else
  set background=light
endif

" Configure default indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Configure NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['.DS_Store', '.git$[[dir]]', '.nyc_output$[[dir]]', '.swp', 'coverage$[[dir]]', 'dist$[[dir]]', 'jspm_packages$[[dir]]', 'node_modules$[[dir]]', '.tmp$[[dir]]']

" Map custom shortcuts
map <C-n> :NERDTreeToggle<CR>

" Show 80 columns
set colorcolumn=80

" Show invisibles
set list
set listchars=tab:»-,trail:·,eol:¬

" Associate extensions with filetypes
au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.theme set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.twig set filetype=html
au BufNewFile,BufRead *.vue set filetype=html
au BufNewFile,BufRead *.ts set filetype=javascript
au BufNewFile,BufRead *.njk set filetype=jinja
