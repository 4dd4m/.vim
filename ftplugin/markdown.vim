nnoremap <F8> :e ~/.vim/ftplugin/vimwiki.vim<CR>
nnoremap <F1> :call CheckSpell()<CR>
set spelllang=en
set spell

hi Cursor guifg=white guibg=white 

let g:vimwiki_conceallevel=2
let g:vimwiki_conceal_onechar_markers=1


function! CheckSpell()
set spell!
if &spell == "nospell"
    echo "Spell OFF"
else
    echo "Spell ON"
endif
endfunc

xnoremap <leader>js :!wrap js<CR>
set nonumber
set norelativenumber
