let maplocalleader = ","
iab cahr char
set makeprg=gcc
" ------------------------------------------------------------
" TAGBAR
" ------------------------------------------------------------

let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'
let g:tagbar_width=30

" ------------------------------------------------------------
" VIM SETTINGS
" ------------------------------------------------------------

set nu                  " Enable line numbers
syntax on               " Enable synax highlighting
set incsearch           " Enable incremental search
set hlsearch            " Enable highlight search
set splitbelow          " Always split below
set mouse=a             " Enable mouse drag on window splits
set tabstop=4           " How many columns of whitespace a \t is worth
set shiftwidth=4        " How many columns of whitespace a “level of indentation” is worth
set expandtab           " Use spaces when tabbing
if !has('nvim')
    set termwinsize=12x0    " Set terminal size
endif
" ------------------------------------------------------------
" MAPPINGS
" ------------------------------------------------------------

"General
nmap        <C-B>     :buffers<CR>
nmap        <C-J>     :term<CR>
"
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

"YCM
nmap        <localLeader>lo    :lopen<CR>
nmap        <localLeader>lc    :lclose<CR>

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'derekwyatt/vim-protodef'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-dispatch'
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
