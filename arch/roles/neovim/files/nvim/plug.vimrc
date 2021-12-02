" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Solarized color scheme
Plug 'altercation/vim-colors-solarized'

" Fast LaTeX macro expansion
Plug 'brennier/quicktex'
" Dev version
"Plug 'syclops/quicktex'

" Support for terraform files
Plug 'hashivim/vim-terraform'

" Powerful code testing
Plug 'janko-m/vim-test'

Plug 'jvoorhis/coq.vim'

" LaTeX Editing
Plug 'lervag/vimtex', {'for': 'tex'}

" Fine-grained navigation
Plug 'Lokaltog/vim-easymotion'

" Asynchronous, smart tags file management'
"Plug 'ludovicchabant/vim-gutentags'

" Rainbow parentheses
Plug 'luochen1990/rainbow'

" Outline browser based on tags
"Plug 'majutsushi/tagbar'

" Syntax highlighting and checking for Dafny
Plug 'mlr-msft/vim-loves-dafny', {'for': 'dafny'}

" Show vertical lines to indicate indent level
Plug 'nathanaelkane/vim-indent-guides'

" Asynchronous file checking
"Plug 'neomake/neomake'

" Easy commenting
Plug 'scrooloose/nerdcommenter'

" Completion engine
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

" Snippet engine and snippet repository
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Syntax highlighting for ProVerif files
Plug 'syclops/proverif.vim'

Plug 'syclops/tamarin-vim'

" Interface for Coq programming
"Plug 'the-lambda-church/coquille' | Plug 'let-def/vimbufsync'

"Plug 'tomlion/vim-solidity'

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

Plug 'w0rp/ale'

"Plug 'vim-scripts/CoqIDE'

" LaTeX Editing
"Plug 'vim-latex/vim-latex', { 'for': 'tex' }

" Jedi Python completion for deoplete
Plug 'zchee/deoplete-jedi'

" Sudo write trick
Plug 'lambdalisue/suda.vim'

" Initialize plugin system
call plug#end()
