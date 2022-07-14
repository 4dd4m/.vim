nmap <leader>co i<!-- --><esc>3hi
nmap <leader>dd i@php(dd())<esc>1hi
set nocursorline
"HI sIGNcOLUMN CTERMBG=NONE GUIBG=WHITE

nmap <leader>f :CocFix<CR>
nmap <leader>rn ::CocRename<CR>

"forcing to use snippets "
iabbrev <buffer> for( "(for,forin,feach,forkv)"
iabbrev <buffer> private "(pv)"
iabbrev <buffer> protected "(prot)"
iabbrev <buffer> function "(pfunc,func)"
iabbrev <buffer> echo "(eo)"
iabbrev <buffer> $this-> "(th)"
iabbrev <buffer> el{ "(el)"
iabbrev <buffer> case "(cs)"
iabbrev <buffer> if "(if,elif)"
iabbrev <buffer> switch "(sw)"
iabbrev <buffer> break "(bk)"
iabbrev <buffer> return "(r)"
"iabbrev <buffer> class "(cls)"
iabbrev <buffer> construct "(constr)"
iabbrev <buffer> <=? "(sot)"

