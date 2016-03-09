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
let g:vimrubocop_keymap = 0
let g:vimrubocop_config = '.rubocop.yml'
nmap <Leader>r :RuboCop<CR>
nnoremap <Leader>puts iputs "#{__FILE__} - #{__LINE__}"<esc>
nnoremap <Leader>putsn oputs "#{__FILE__} - #{__LINE__}"<esc>
noremap <F3> :Autoformat<CR><CR>
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
# autocmd BufWritePost *.html package_javascript.sh When the buffer writes an HTML file this will perform some action
# autocmd BufWritePost *.js package_javascript.sh When the buffer writes an HTML file this will perform some action

let g:airline#extensions#tabline#enabled = 1

nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>a

nmap <Leader>j :%s/:\([^=,'"]*\) =>/\1:/gc<CR>

if has("spell")
  " turn spelling on by default
  set spell

  " toggle spelling with F4 key
  map <F4> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>

  " they were using white on white
  highlight PmenuSel ctermfg=black ctermbg=lightgray

  " limit it to just the top 10 items
  set sps=best,10
endif
