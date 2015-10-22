set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My Plugins here:
"
" original repos on github
" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'
" Syntax checking
Plugin 'scrooloose/syntastic'
" Directory exploration
Plugin 'scrooloose/nerdtree'
" Powerful word-granularity navigation
Plugin 'Lokaltog/vim-easymotion'
" Lightweight buffer manager
Plugin 'fholgado/minibufexpl.vim'
" Awesome LaTeX features
Plugin 'vim-latex/vim-latex'
" Easy paired character management
Plugin 'tpope/vim-surround'
" Use . to repeat any command
Plugin 'tpope/vim-repeat'
" Easy commenting
Plugin 'scrooloose/nerdcommenter'
" Nice color scheme
Plugin 'tpope/vim-vividchalk'
" Case and grammar-smart find/replace
Plugin 'tpope/vim-abolish'
" Easy complementary mappings
Plugin 'tpope/vim-unimpaired'
" Easy session management
Plugin 'tpope/vim-obsession'
" Asynchronous compiler tools
Plugin 'tpope/vim-dispatch'
" Easy increment and decrement of dates and times
Plugin 'tpope/vim-speeddating'
" Sugar for common UNIX commands
Plugin 'tpope/vim-eunuch'
" Autocompletion of code snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
" BibTeX snippets
"Plugin 'rbonvall/snipmate-snippets-bib'
" Use TAB for autocomplete
" Plugin 'ervandew/supertab'
" Required for easytags
"Plugin 'xolox/vim-misc'
" Automatic tag management
"Plugin 'xolox/vim-easytags'
" Interactive commands inside Vim buffer
"Plugin 'basepi/vim-conque'
" TextMate-style snippets for Vim
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
" Autocomplete on steroids
Plugin 'valloric/youcompleteme'
" Snippet completion
Plugin 'sirver/ultisnips'
" Vim snippets
Plugin 'honza/vim-snippets'
" Better word jumping in Camel Case
Plugin 'camelcasemotion'
" Read-eval-print in Vim
Plugin 'zweifisch/pipe2eval'
" <F12> to switch mouse focus
Plugin 'nvie/vim-togglemouse'
" Nice features for LaTeX editing
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" Language tools for grammar checking
"Plugin 'languagetool-org/languagetool'

" vim-scripts repos
" Automatically match delimiters
Plugin 'delimitMate.vim'
" More powerful % match
Plugin 'matchit.zip'
" Yank Ring for better copy/pasting
Plugin 'YankRing.vim'
" Language tools for grammar checking
Plugin 'vim-scripts/LanguageTool'

call vundle#end()


" non github repos
" ...

filetype plugin indent on     " required!
filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
