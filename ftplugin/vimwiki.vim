map <leader>ha <Plug>VimwikiAddHeaderLevel
map <leader>hr <Plug>VimwikiRemoveHeaderLevel
map <leader>isi <Plug>VimwikiIncreaseLvlSingleItem
map <leader>dsi <Plug>VimwikiDecreaseLvlSingleItem
map <leader>dwi <Plug>VimwikiDecreaseLvlWholeItem
map <leader>iwi <Plug>VimwikiIncreaseLvlWholeItem
set showcmd
let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'auto_toc': 1,
                     \'auto_generate_tags': 1,
                     \'g:vimwiki_table_auto_fmt' : 1,
                     \}]
nnoremap <Up> :lopen<CR>
nnoremap <Down> :lclose<CR>
nnoremap <Left> :lprevious<CR>
nnoremap <Right>    :lnect<CR>

set ignorecase
set backspace=2
set spelllang=en
set spell!

