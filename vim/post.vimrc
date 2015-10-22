" Other useful options
set hidden                      " hide buffers instead of closing them
set expandtab                   " tab inserts spaces
set smarttab                    " tab at the beginning of a line uses shiftwidth
set tabstop=2                   " tab is 2 spaces
set shiftwidth=2                " indentation is 2 spaces
set autoindent                  " automatically indent lines
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive only if pattern contains uppercase
set incsearch                   " incremental search
set hlsearch                    " highlight search terms
set relativenumber              " relative line numbering
set ruler                       " show line/col number
set nosol                       " don't change columns when changing lines
set scrolloff=3                 " 3 lines visible on either side of the cursor
set history=1000                " longer history
set wildmenu                    " autocomplete commands
set wildmode=list:longest,full  " match longest common command first
set wildignore=*.ai,*.eps,*.log,*.aux
set shortmess=atI               " shorten messages
                                " a - all abbreviations
                                " t - truncate message if it's too long
                                " I - no vim intro message
set list                        " show whitespace
set listchars=tab:>-,trail:~    " show tabs and trailing spaces
set mouse=a                     " allow mouse interaction
set backspace=indent,eol,start  " backspace over line breaks and indents
set showcmd                     " show partial commands and selected visual area
set laststatus=2                " always show status line
set t_Co=256                    " 256-color mode
set nomodeline                  " disable modelines
set textwidth=80                " lines are 80 characters long
set foldmethod=syntax           " fold based on syntax highlighting
set noeb                        " no error bells
set grepprg=grep\ -nH\ $*       " better grep from vim
set ofu=syntaxcomplete#Complete " omnicomplete
set ut=10000                    " If nothing is typed for 10 seconds, write the swap file to disk
set stl=%F%m%r%h%w\ [%Y]\ [%04l,%04v][%p%%]\ [%L\ lines] " better status line
set stl+=%#warningmsg#
set stl+=%*
set pastetoggle=<F2>            " Use <F2> to toggle paste mode
set spell
set spellfile=~/.vim/spell/en.utf-8.add

" syntax highlighting and colors
syn enable
"let g:solarized_termcolors=256
set background=dark
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
colorscheme solarized

" Plugin specific options
let g:syntastic_mode_map = { 'mode': 'active' }
"let g:syntastic_mode_map = { 'mode': 'active',
                           "\ 'passive_filetypes': ['tex'] } " disable syntastic in tex
let g:syntastic_always_populate_loc_list=1
let g:syntastic_cpp_checkers=['gcc', 'cpplint'] " Use PEP8 style for Python
let g:syntastic_cpp_cpplint_thres=3
let g:syntastic_python_checkers=['flake8'] " Use PEP8 style for Python
"let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplMapCTabSwitchBufs=1
" let g:miniBufExplModSelTarget=1
let g:tex_flavor='latex'
"let g:SuperTabLongestEnhanced=1
"let g:easytags_updatetime_min=10000
"let g:tex_indent_brace = 1
"let g:tex_indent_items = 0

" abbreviations/spellchecks
ab teh the
ab empg emph

autocmd BufRead,BufNewFile *.tex set iskeyword+=:,-
autocmd BufRead,BufNewFile *.tex let b:dispatch='make'
autocmd BufRead,BufNewFile *.tex syn spell toplevel
autocmd BufRead,BufNewFile *.py set shiftwidth=4
autocmd BufRead,BufNewFile *.py set foldmethod=indent
autocmd BufRead,BufNewFile *.py set tw=79

" For when you forget to open a file with sudo
cmap w!! w !sudo tee % >/dev/null

" Stop pressing the shift key to save
nnoremap ; :
vnoremap ; :

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-e>"

" Automatically close the preview window after completing using YCM
let g:ycm_autoclose_preview_window_after_completion=1



function! Format() range
  exe a:firstline . "," . a:lastline . 's/[“|”]/"/eg'
  exe a:firstline . "," . a:lastline . "s/[‘|’]/'/eg"
  exe a:firstline . "," . a:lastline . 's/—/ - /eg'
  exe a:firstline . "," . a:lastline . 's/…/.../eg'
endfunction


" languagetool jar location
let g:languagetool_jar='/usr/local/Cellar/languagetool/2.8/libexec/languagetool-commandline.jar'

" Syntastic Checkers
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_tex_checkers = ['checkwriting']

" Other Syntastic options
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=1
"let g:syntastic_debug=1

" Let YouCompleteMe read tags files
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_invoke_completion=''

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

hi link EasyMotionTarget Special
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First Todo
hi link EasyMotionTarget2Second Underlined

" Ctags with TeX
let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
let tlist_make_settings  = 'make;m:makros;t:targets'

" KEY REMAPPINGS
" map leader to comma
let mapleader=","
imap <Nul> <Plug>IMAP_JumpForward
imap <C-c> <Plug>delimitMateS-Tab
inoremap \[ \[<CR><BS>\]<Esc>ko
inoremap {<CR> {<CR><BS>}<Esc>ko
inoremap \{ \{\}<Esc>5hi
"if (&tildeop)
    "nmap gcw guw~l
    "nmap gcW guW~l
    "nmap gciw guiw~l
    "nmap gciW guiW~l
    "nmap gcis guis~l
    "nmap gc$ gu$~l
    "nmap gcgc guu~l
    "nmap gcc guu~l
    "vmap gc gu~l
"else
    "nmap gcw guw~h
    "nmap gcW guW~h
    "nmap gciw guiw~h
    "nmap gciW guiW~h
    "nmap gcis guis~h
    "nmap gc$ gu$~h
    "nmap gcgc guu~h
    "nmap gcc guu~h
    "vmap gc gu~h
"endif
" Hide whitespace
nmap <silent> <leader>s :set nolist!<CR>
"noremap <C-Down>  <C-W>j
"noremap <C-Up>    <C-W>k
"noremap <C-Left>  <C-W>h
"noremap <C-Right> <C-W>l
noremap <C-TAB>   <C-W>w
noremap <C-S-TAB> <C-W>W
noremap <leader>h <C-W>h
noremap <leader>j <C-W>j
noremap <leader>k <C-W>k
noremap <leader>l <C-W>l
" emacs-like insert-mode editing
imap <c-e> <c-o>$
imap <c-a> <c-o>^
imap <c-p> <c-o>k
imap <c-n> <c-o>j
imap <c-k> <esc>lc$
" Avoid Snipmate/YCM conflicts
"imap <C-S> <Plug>snipMateNextOrTrigger
"smap <C-S> <Plug>snipMateNextOrTrigger

" pastes text from clipboard without vim's auto-indenting
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"

" Easy call of Dispatch
map <Leader>d :Dispatch!<CR>

" fix alignment for the current paragraph
nmap <Leader>gq vipgq

" clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr> 

" Disable ex mode
map Q <Nop>

" Hack to get proper <Shift-Enter> behavior
noremap ✠ <S-CR>

" Hack to make Cmd-S save (Mac only)
noremap ❥ :w<CR>

" Quickly edit/reload .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Easy switch between backgrounds
"map <Leader>bg :call BackgroundSwitch()<CR>
"function! BackgroundSwitch()
  "hi clear
  "syntax reset
  ""if exists("syntax_on")
    ""syntax reset
  ""endif
  "if &background == "dark"
    "let background="light"
  "else
    "let background="dark"
  "endif
  "syn enable
  ""let background = (&background == "dark" ? "light" : "dark" )
  ""colorscheme solarized
"endfunction
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
