let maplocalleader = ","
set makeprg=gcc
nnoremap <leader>ma :Make<CR>
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
" ------------------------------------------------------------
" TAGBAR
" ------------------------------------------------------------

let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'
let g:tagbar_width=30
let &makeprg = 'if [ -f Makefile  ]; then make; else make -C ..; fi'

" ------------------------------------------------------------
" MAPPINGS
" ------------------------------------------------------------

"NERDTree
nmap        <F2>      :NERDTreeToggle<CR>

"tagbar
nmap        <localLeader>ta      :TagbarToggle<CR>

"ctrlds
nmap        <C-F>f    <Plug>CtrlSFPrompt
xmap        <C-F>f    <Plug>CtrlSFVwordPath
xmap        <C-F>F    <Plug>CtrlSFVwordExec
nmap        <C-F>n    <Plug>CtrlSFCwordPath
nmap        <C-F>p    <Plug>CtrlSFPwordPath
nnoremap    <C-F>o    :CtrlSFOpen<CR>
nnoremap    <C-F>t    :CtrlSFToggle<CR>
inoremap    <C-F>t    <Esc>:CtrlSFToggle<CR>

"fswitch
nmap        <C-Z>     :vsplit <bar> :wincmd l <bar> :FSRight<CR>


" Map <F6> to the Debug executable with passed filename
function SetBinaryDebug(filename)
    let bpath = getcwd() . "/bin/Debug/" . a:filename
    execute "nnoremap <F6> :Dispatch "
            \ bpath
            \ . " <CR> <bar> :Copen<CR>"
    echo "<F6> will run: " . bpath
endfunction

" Map <F7> to the Release executable with passed filename
function SetBinaryRelease(filename)
    let bpath = getcwd() . "/bin/Release/" . a:filename 
    execute "nnoremap <F7> :Dispatch "
                \ bpath 
                \ . "<CR> <bar> :Copen<CR>"
    echo "<F7> will run: " . bpath
endfunction
