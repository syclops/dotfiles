" Plugin-specific settings
"
" Lokaltog/vim-easymotion
hi link EasyMotionTarget Special
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First Todo
hi link EasyMotionTarget2Second Underlined

" Shougo/deoplete.nvim
"if !exists('g:deoplete#omni#input_patterns')
  "let g:deoplete#omni#input_patterns = {}
"endif
call deoplete#custom#option({'auto_complete_delay': 50})
call deoplete#custom#option({'auto_refresh_delay': 25})
call deoplete#custom#option({'enable_at_startup': 1})

" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-e>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "customsnippets"]
snoremap <nul> :call UltiSnips#ExpandSnippetOrJump()<cr>
xnoremap <nul> :call UltiSnips#ExpandSnippetOrJump()<cr>
inoremap <nul> :call UltiSnips#ExpandSnippetOrJump()<cr>
noremap <silent> <plug>AirlineTablineRefresh :set mod!<cr>

" tpope/vim-dispatch
autocmd BufRead,BufNewFile *.tex let b:dispatch='make'
map <leader>d :Dispatch!<cr>

" vim-airline/vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" w0rp/ale
let g:ale_lint_on_text_changed = 'never'  " don't lint on unsaved text change
let g:ale_lint_on_enter = 0  " don't lint when opening a file
let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8 --ignore E129,W503'
let g:ale_python_pylint_executable = 'python3'
let g:ale_python_pylint_options = '-m pylint'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
