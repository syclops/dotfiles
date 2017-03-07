" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Solarized color scheme
Plug 'altercation/vim-colors-solarized'

" Powerful code testing
Plug 'janko-m/vim-test'

Plug 'jvoorhis/coq.vim'

" LaTeX Editing
Plug 'lervag/vimtex', {'for': 'tex'}

" Fine-grained navigation
Plug 'Lokaltog/vim-easymotion'

" Asynchronous, smart tags file management'
Plug 'ludovicchabant/vim-gutentags'

" Rainbow parentheses
Plug 'luochen1990/rainbow'

" Outline browser based on tags
"Plug 'majutsushi/tagbar'

" Syntax highlighting and checking for Dafny
Plug 'mlr-msft/vim-loves-dafny', {'for': 'dafny'}

" Show vertical lines to indicate indent level
Plug 'nathanaelkane/vim-indent-guides'

" Asynchronous file checking
Plug 'neomake/neomake'

" Easy commenting
Plug 'scrooloose/nerdcommenter'

" Completion engine
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

" Snippet engine and snippet repository
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Syntax highlighting for ProVerif files
Plug 'syclops/proverif.vim'

" Interface for Coq programming
"Plug 'the-lambda-church/coquille' | Plug 'let-def/vimbufsync'

" Case- and variant-sensitive find-and-replace
Plug 'tpope/vim-abolish'

" Asynchronous builds
Plug 'tpope/vim-dispatch'

" Easy paired delimiters
Plug 'tpope/vim-surround'

" Convenient, complementary key mappings
Plug 'tpope/vim-unimpaired'

" Nicer status line and themes
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

" Grammar and writing style checking
Plug 'vim-scripts/LanguageTool', {'for': ['tex', 'markdown']}

"Plug 'vim-scripts/CoqIDE'

" LaTeX Editing
"Plug 'vim-latex/vim-latex', { 'for': 'tex' }

" Jedi Python completion for deoplete
Plug 'zchee/deoplete-jedi'

" Initialize plugin system
call plug#end()

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

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

autocmd BufRead,BufNewFile *.tex set iskeyword+=:,-
autocmd BufRead,BufNewFile *.tex let b:dispatch='make'
autocmd BufRead,BufNewFile *.tex syn spell toplevel
autocmd BufRead,BufNewFile *.py set sw=4
autocmd BufRead,BufNewFile *.py set ts=4
autocmd BufRead,BufNewFile *.py set foldmethod=indent
autocmd BufRead,BufNewFile *.py set tw=79
autocmd BufRead,BufNewFile *.py set colorcolumn=80
autocmd BufRead,BufNewFile *.se set filetype=python
autocmd FileType gitcommit set tw=72
autocmd FileType gitcommit set colorcolumn=72
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

hi link EasyMotionTarget Special
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First Todo
hi link EasyMotionTarget2Second Underlined
hi SpellBad ctermfg=124

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:deoplete#auto_complete_delay = 50
let g:deoplete#auto_refresh_delay = 25
let g:deoplete#enable_at_startup = 1
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:tex_flavor = 'latex'
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-e>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "customsnippets"]
"let g:vimtex_latexmk_enabled=0
let mapleader=","

cmap hv vert help
cmap wc WordCount
cmap w!! w !sudo tee % >/dev/null
imap <c-a> <c-o>^
imap <c-e> <c-o>$
imap <c-k> <esc>lc$
imap <c-n> <c-o>j
imap <c-p> <c-o>k
snoremap <nul> :call UltiSnips#ExpandSnippetOrJump()<cr>
xnoremap <nul> :call UltiSnips#ExpandSnippetOrJump()<cr>
inoremap <nul> :call UltiSnips#ExpandSnippetOrJump()<cr>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
map Q <Nop>
map <leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<cr>
map <leader>d :Dispatch!<cr>
map <leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>
nmap Q :call TeX_fmt()<cr>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
noremap <silent> <plug>AirlineTablineRefresh :set mod!<cr>
nnoremap ; :
nnoremap <cr> :nohlsearch<cr>
noremap <leader>h <c-w>h
noremap <leader>j <c-w>j
noremap <leader>k <c-w>k
noremap <leader>l <c-w>l
nnoremap <tab> %
vnoremap ; :
vnoremap <tab> %

fun! TeX_fmt()
  if (getline(".") != "")
    let save_cursor = getpos(".")
    let op_wrapscan = &wrapscan
    set nowrapscan
    let par_begin = '^\(%D\)\=\s*\($\|\\label\|\\begin\|\\end\|\\\[\|\\\]\|\\\(sub\)*section\>\|\\item\>\|\\NC\>\|\\blank\>\|\\noindent\>\)'
    let par_end   = '^\(%D\)\=\s*\($\|\\label\|\\begin\|\\end\|\\\[\|\\\]\|\\place\|\\\(sub\)*section\>\|\\item\>\|\\NC\>\|\\blank\>\)'
    try
      exe '?'.par_begin.'?+'
    catch /E384/
      1
    endtry
    norm V
    try
      exe '/'.par_end.'/-'
    catch /E385/
      $
    endtry
    norm gq
    let &wrapscan = op_wrapscan
    call setpos('.', save_cursor) 
  endif
endfun

function! WordCount()
  let s:old_status = v:statusmsg
  let position = getpos(".")
  exe "silent normal g\<c-g>"
  let stat = v:statusmsg
  let s:word_count = 0
  if stat != '--No lines in buffer--'
    let s:word_count = str2nr(split(v:statusmsg)[11])
    let v:statusmsg = s:old_status
  end
  call setpos('.', position)
  return s:word_count
endfunction
