nnoremap <Right> :next<cr>
nnoremap <Left> :previous<cr>
nnoremap <F3> :set modifiable<CR>
nnoremap <F2> :set nomodifiable<CR>
nnoremap <F1> :args *.sld<CR>
inoremap <F4>  <Space>vim:ft=sld:relativenumber!:nonumber:nocursorline:syntax=help:
nnoremap <C-n> :next<cr>
nnoremap <C-p> :prev<cr>
set textwidth=0
:AirlineToggle
set laststatus=0
set wrapmargin=0
set concealcursor=n
:hi NonText guifg=bg
set nocursorline
set nocursorcolumn
highlight ColorColumn ctermbg=bg guibg=bg
autocmd BufRead,BufWinEnter * set relativenumber!  
autocmd BufRead,BufWinEnter * set nonumber
