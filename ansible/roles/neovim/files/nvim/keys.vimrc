cmap hv vert help
cmap wc WordCount
cmap w!! w !sudo tee % >/dev/null
imap <c-a> <c-o>^
imap <c-e> <c-o>$
imap <c-k> <esc>lc$
imap <c-n> <c-o>j
imap <c-p> <c-o>k
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
map Q <Nop>
map <leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<cr>
map <leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>
nmap Q :call TeX_fmt()<cr>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap ; :
nnoremap <cr> :nohlsearch<cr>
noremap <leader>h <c-w>h
noremap <leader>j <c-w>j
noremap <leader>k <c-w>k
noremap <leader>l <c-w>l
nnoremap <tab> %
vnoremap ; :
vnoremap <tab> %
