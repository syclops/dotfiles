set background=dark
set colorcolumn=81  " show colored line after 80 characters
set cursorline  " Highlight the line the cursor is on
set encoding=utf-8  " Use UTF-8
set expandtab  " tab inserts spaces
set foldmethod=syntax  " fold based on syntax highlighting
set gdefault  " default to global find and replace
set hidden  " hide buffers instead of closing them
set ignorecase  " case insensitive search
set list  " show whitespace
set listchars=tab:↹·,extends:⇉,precedes:⇇,nbsp:␠,trail:␠,nbsp:␣
set noeb  " no error bells
set nojoinspaces  " one space after sentences
set nomodeline  " disable modelines
set nosol  " don't change columns when changing lines
set number  " line numbering
set ofu=syntaxcomplete#Complete  " omnicomplete
set relativenumber  " relative line numbering
set ruler  " show line/col number
set scrolloff=3  " 3 lines visible on either side of the cursor
set shiftwidth=2  " indentation is 2 spaces
set showcmd  " show partial commands and selected visual area
set showmatch  " briefly jump to a matching bracket
set smartcase  " case sensitive only if pattern contains uppercase
set spell
set spellfile=~/.vim/spell/en.utf-8.add
set tabstop=2  " tab is 2 spaces
set textwidth=80  " lines are 80 characters long
set undofile  " save changes in a file for later undoing
set ut=10000  " If nothing is typed for 10 seconds, write the swap file to disk
set verbosefile=~/nvim.txt
set wildignore=*.ai,*.eps,*.log,*.aux
set wildmode=list:longest,full  " match longest common command first

if &term =~ '^screen'
		" tmux knows the extended mouse mode
		set ttymouse=xterm2
endif
set t_Co=256                    " 256-color mode

syntax enable
colorscheme solarized

autocmd BufRead,BufNewFile *.tex set iskeyword+=:,-
autocmd BufRead,BufNewFile *.tex syn spell toplevel
autocmd BufRead,BufNewFile *.py set sw=4
autocmd BufRead,BufNewFile *.py set ts=4
autocmd BufRead,BufNewFile *.py set foldmethod=indent
autocmd BufRead,BufNewFile *.py set tw=79
autocmd BufRead,BufNewFile *.py set colorcolumn=80
autocmd BufRead,BufNewFile *.sol set sw=2
autocmd BufRead,BufNewFile *.se set filetype=python
autocmd FileType gitcommit set tw=72
autocmd FileType gitcommit set colorcolumn=72
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:python2_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:tex_flavor = 'latex'

let mapleader=","
