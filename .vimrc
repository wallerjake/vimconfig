execute pathogen#infect()
call pathogen#helptags()

set nocompatible
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu
syntax on
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set hlsearch
set ignorecase
set foldmethod=indent
set directory=$HOME/.vim/swapfiles//
" Give a shortcut key to NERD Tree
map <F5> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 55
filetype plugin on
let g:airline_theme='simple'
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
