" General mostly vizual settings
set t_Co=256
syntax enable
set cursorline
set number
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set showmatch
set incsearch
set hlsearch

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
Plug 'ocaml/vim-ocaml'
Plug 'rhysd/vim-clang-format'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" Disable Automatic VimTex Error Window
let g:vimtex_quickfix_mode = 0

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme onedark
