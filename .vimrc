" My .vimrc
" Created by Andrew C. Pacífico <andrewcpacifico@gmail.com>

" Vundle configuration
"
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
"  " required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"  Bundle 'tpope/vim-fugitive'

" vim-scripts repos
" Bundle 'L9'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'

" Surround
Bundle 'tpope/vim-surround'

" Autoclose parenthesis, brackets etc
Bundle 'Townk/vim-autoclose'

"Sparkup
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" PHP Syntax
Bundle 'StanAngeloff/php.vim'

" HTML5 Syntax
Bundle 'othree/html5.vim'

" CSS3 Syntax
Bundle 'hail2u/vim-css3-syntax'

" Colorschemes
Bundle 'modess/vim-phpcolors'
Bundle 'baskerville/bubblegum'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'spf13/vim-colors'
Bundle 'tomasr/molokai'

" PHP Comment Generator
Bundle 'andrewpacifico/acp_php_comments'

" Make gvim-only colorschemes work transparently in terminal vim
Bundle 'godlygeek/csapprox'

" Java auto complete
Bundle 'javacomplete'

" Snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
" Bundles that require any configurations
"
" NERDTree
Bundle 'scrooloose/nerdtree'
" Open NERDTree automatically when vim starts up if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowHidden=1 " Show Hidden Files

" PHP auto complete
Bundle 'shawncplus/phpcomplete.vim'
let g:phpcomplete_parse_docblock_comments = 1

"TagList
Bundle 'taglist.vim'
nnoremap <leader>l :TlistToggle<CR>
let Tlist_Use_Right_Window=1 "Shows TagList on right
let Tlist_Sort_Type="name"
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_File_Fold_Auto_Close=1
"Choose which tags should be displayed in php files
let tlist_php_settings='php;c:Classes;f:Functions' 

Bundle 'scrooloose/syntastic'

" Airline
Bundle 'bling/vim-airline'
let g:airline_theme='bubblegum'
"let g:airline_powerline_fonts=1
"let g:airline_enable_branch=1
"let g:airline_enable_syntastic=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_detect_paste=1

" PDV: PhpDocGenerator
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
nnoremap <leader>doc :call PhpDocSingle()<CR>
vnoremap <leader>doc :call PhpDocRange()<CR>

filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" My Vim options

" Define default file encoding
set encoding=utf-8

" Show cursor position
set ruler

" Highlight current line
set cursorline

" Replace tabs with spaces "
set expandtab

" Make tabs 4 spaces wide "
set tabstop=4
set shiftwidth=4

" If I am in an indented block of code, keep the indentation level when I "
" press enter "
set autoindent

" Show line numbers "
set number

" Highlight column 81 to help keep lines of code 80 characters or less "
set colorcolumn=81

" Sets colorscheme
"set background=dark
"let g:molokai_original = 1
colorscheme molokai

" Enable autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo

" Define <leader> key
let mapleader= ","

" Keybindings
"
" Ctrl+S to save files
inoremap <C-s> <Esc>:w<CR>i
nnoremap <c-s> :w<cr>

" Ctrl+C to copy selected text to clipboard
vnoremap <C-c> "+yi

" Ctrl+V to paste clipboard content
inoremap <C-v> <Esc> "+pi

" Ctrl+Z to undo changes
inoremap <C-z> <Esc>ui

" Ctrl+D to delete the selected line
inoremap <C-d> <Esc>ddi
nnoremap <C-d> dd

" Ctrl+U to convert the current word to uppercase
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU

" Edit .vimrc in split mode
nnoremap <leader>ev :rightbelow vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Exit insert mode
inoremap jk <esc>l
inoremap <esc> <nop>

" -----------------------------------------------------------------------------
" - Some coding abbreviations
" -----------------------------------------------------------------------------
"
" if abbreviation
autocmd FileType php :iabbrev <buffer> iff if() {<cr>}<up>
