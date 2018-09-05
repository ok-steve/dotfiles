" Use Vim settings, rather than Vi (must come first)
set nocompatible

""""""""""""""""
" Plugin manager
""""""""""""""""

" Automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.usercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')

Plug 'chriskempson/base16-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'evidens/vim-twig'
Plug 'hail2u/vim-css3-syntax'
Plug 'https://git.drupal.org/project/vimrc.git', { 'branch': '*.x-1.x', 'rtp': 'bundle/vim-plugin-for-drupal' }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'junegunn/limelight.vim', { 'for': 'markdown' }
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-vdebug/vdebug'
Plug 'w0rp/ale'

" Enable file type detection and do language-dependent indenting
filetype plugin indent on

call plug#end()





"""""""
" Theme
"""""""

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Show 80 columns
set colorcolumn=80

" Show invisibles
set list

" Color schemes
colorscheme base16-solarized-light





""""""""""""
" File types
""""""""""""

" Code completion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP





"""""""""
" Plugins
"""""""""

" NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.DS_Store', '\.git$[[dir]]', '\.nyc_output$[[dir]]', '\.swp', 'coverage$[[dir]]', 'dist$[[dir]]', 'jspm_packages$[[dir]]', 'node_modules$[[dir]]', '\.tmp$[[dir]]', '\.svn$[[dir]]']
let g:NERDTreeChDirMode=2

map <C-n> :NERDTreeToggle<CR>

" Goyo/Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" vim-signify
let g:signify_vcs_list = ['git', 'svn']





"""""""
" Other
"""""""

" For Webpack (https://webpack.js.org/guides/development/)
set backupcopy=yes

" Allow per-project .vimrc files
set exrc

" Disable unsafe commands
set secure
