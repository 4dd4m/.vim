nnoremap <leaDER>fi :CocAction<CR>
let g:UltiSnipsExpandTrigger="<tab>"
set signcolumn=yes
nnoremap <leader>if /require('\.\//s+11<CR>

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
 
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

iabbrev Strin, StrinG
iabbrev <buffer> if "(if)"
iabbrev <buffer> for "(for,forin)"
iabbrev <buffer> while "(wh)"
iabbrev <buffer> switch "(sw)"
iabbrev <buffer> function "(func,funcv,varrow,funcai)"
iabbrev <buffer> break "(bk)"
iabbrev <buffer> else if "(el,elif)"
iabbrev <buffer> case "(cs)"
iabbrev <buffer> return "(r)"
iabbrev <buffer> try{ "(try)"
iabbrev <buffer> ready "(onload)"
iabbrev <buffer> continue "(cont)"
iabbrev <buffer> setTimeout "(tout)"

