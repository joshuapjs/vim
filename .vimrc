" General mostly visual settings
syntax enable
"set t_Co=256 -- Enable if your terminal is shit.
set background=light
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
Plug 'sheerun/vim-polyglot'

" Disable Automatic VimTex Error Window
let g:vimtex_quickfix_mode = 0

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

autocmd BufNewFile,BufRead *.tex set filetype=tex

" Fixing bug where files opened with Vim remain in the history.
if &term =~ "ansi"
    let &t_ti = "\<Esc>[?47h"
    let &t_te = "\<Esc>[?47l"
endif

" following systems dark/light mode
if has('gui_running')
            set background=light
                else
                            set background=dark
                                endif

" Colorscheme downloaded from GitHub and stored in .vim/colors
" let g:solarized_termcolors=256 -- Enable if your terminal is shit.
colorscheme solarized

