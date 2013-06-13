call pathogen#infect()
call pathogen#helptags()

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu
syntax on
" Press Space to turn off highlighting and clear any message already displayed."
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set hlsearch
set ignorecase
set foldmethod=indent
" Give a shortcut key to NERD Tree
map <F5> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 55
filetype plugin on
