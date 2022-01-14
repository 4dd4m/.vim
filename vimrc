"Sets And Lets
set title
filetype plugin indent on
hi MatchParen cterm=bold ctermbg=red ctermfg=black ctermbg=225 guibg=#2c5d27
set autoindent tabstop=4 softtabstop=4 expandtab shiftwidth=4
set helplang=hu
hi clear SpellBad
hi SpellBad cterm=underline
set laststatus=2
set completepopup=height:11,width:60,highlight:InfoPopup
set title
set ignorecase smartcase nohlsearch incsearch
set linebreak wrap wrapscan
set nocompatible
set noswapfile nobackup nowritebackup
set number relativenumber
set autowriteall 
set ruler
set splitbelow splitright
set backspace=2
set undofile undodir=~/.vim/undodir
set wildmenu
set showcmd


"Open help on vertical split
cabbrev shelp vert help


" Mappings to access buffers
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
let mapleader = ' ' "Leader key is <SPACE>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <Leader>11 :11b<CR>
nnoremap <Leader>12 :12b<CR>
nnoremap <Leader>13 :13b<CR>
nnoremap <Leader>14 :14b<CR>
nnoremap <Leader>15 :15b<CR>
nnoremap <Leader>16 :16b<CR>
nnoremap <Leader>17 :17b<CR>
nnoremap <Leader>18 :18b<CR>
nnoremap <Leader>19 :19b<CR>
nnoremap <Leader>20 :20b<CR>
nnoremap ^Ãº :tag <CR>

nnoremap <leader>n :cn<CR>
nnoremap <leader>b :cp<CR>
nnoremap <leader>on :only<CR>
nnoremap <leader>us :vimgrep <cword> **/*.php<CR>:copen<CR>


call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lervag/vimtex', { 'for': 'tex', 'tag': 'v1.6' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'iamcco/mathjax-support-for-mkdp', { 'for': 'tex' }
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile','for' :['java','python','py','javascript']}
"Plug 'VundleVim/Vundle.vim'
"Plug 'sheerun/vim-polyglot', {'for' : 'c'}
Plug 'jiangmiao/auto-pairs', {'for' : 'c'}
Plug 'preservim/nerdtree', {'for' : 'c'}
Plug 'preservim/tagbar', {'for' : 'c'}
Plug 'dyng/ctrlsf.vim', {'for' : 'c'}
Plug 'derekwyatt/vim-fswitch', {'for' : 'c'}
Plug 'derekwyatt/vim-protodef', {'for' : 'c'}
Plug 'tpope/vim-dispatch', {'for' : 'c'}
Plug 'metakirby5/codi.vim', {'for' : 'javascript'}
Plug 'joereynolds/gtags-scope',
"Plug 'ndrewRadev/switch.vim'
Plug 'andmarti1424/sc-im'
"Plug 'khzaw/vim-conceal'
Plug 'mattn/emmet-vim' ", {'for' : ['html','php'] } "Expand by: C-Y + ,
"Plug 'metakirby5/codi.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'tpope/vim-fugitive'
"Plug 'honza/vim-snippets'
"Plug 'iamcco/markdown-preview.vim'
Plug 'KeitaNakamura/tex-conceal.vim', { 'for': 'tex' }
Plug 'SirVer/ultisnips', { 'for': ['javascript','tex','java','python','sh','bash'] }
Plug 'vimwiki/vimwiki'

call plug#end()

"Setup the diff
nnoremap <F5> <C-w>l<C-w>l:diffoff<CR><c-w>h<c-w>h
nnoremap <A-v> "+p

nnoremap <F8> :e ~/.vim/ftplugin/%:e.vim<CR>
nnoremap <leader><F8> :vs ~/.vim/ftplugin/%:e.vim<CR>

let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"

"Switch trigger
"-------------
"set path+="~/.vim/ftplugin"
set rtp+="~/.vim/ftplugin/"
let g:switch_mapping = "Â¬"
let g:switch_custom_definitions = [
            \   ['or', 'and', 'xor'],
            \   ['.',':','->'],
            \   ['True','False'],
            \   ['minimum','maximum'],
            \   ['true','false'],
            \   ['one','two','three','four','five'],
            \   ['abosulte','relative'],
            \   ['hidden','visible'],
            \   ['block','inline','flex'],
            \   ['center','left','right','auto'],
            \   ['public','private','protected','static'],]


"let g:loaded_python_provider = 1 
let g:netrw_preview   = 1
let g:netrw_winsize   = 30


"Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let  g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsEditSplit="vertical" "ultisnips in split
let g:ctrlp_map = '<leader>op'
"CTRL P ignore filetypes
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn|images|runtime|)$',
            \ 'file': '\v\.(fdb_latexmk|log|exe|idx|ind|ilg|pdf|so|toc|dll|aux|fls|gz|bak|bbl|class|out|blg|png|jpg|jpeg)$',
            \ 'link': '',
            \ }
"let g:vimwiki_list = [{'path': '~/dropBox/', 'path_html': '~/public_html/'},
"            \ {'path': '~/my_docs/', 'ext': '.mdox','css_name' : 'my.css'}]

let g:vimwiki_list = [{'path': '~/dropBox/wiki/vimwiki/', 'path_html':
            \ '/srv/homepage/network/'}]



"sorround tags
nmap <leader>" :norm bi"<esc>ea"<esc>
nmap <leader>' :norm bi'<esc>ea'<esc>
nmap <leader>] :norm bi[<esc>ea]<esc>
nmap <leader>[ :norm bi[<esc>ea]<esc>
nmap <leader>) :norm bi(<esc>ea)<esc>
nmap <leader>( :norm bi(<esc>ea)<esc>
nmap <leader>{ :norm bi{<esc>ea}<esc>
nmap <leader>} :norm bi{<esc>ea}<esc>
"Put ; on the end of the line
nmap <leader>; :norm A;<esc>

"split zoom
"----------
nnoremap <C-m> <C-W>\|<C-W>_
nnoremap <C-n> <C-W>=

"NoCTRLQ
nnoremap <S-Q> ZQ

"saving with CTRL+S
nnoremap <c-s> :update<CR>
inoremap <c-s>  <Esc>:update<CR>a
"Tab Handling
nnoremap tn :tabnew<space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>
inoremap jk <Esc>
inoremap Jk <Esc>
inoremap JK <Esc>

"Split Navigation
"-------------------------
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <Esc> <C-\><C-n>
"Get HUN ZZ ZQ
nnoremap YQ ZQ
nnoremap YY ZZ
"EX <-----> Format
noremap gQ Q
noremap Q gq
nnoremap <F9> :e ~/.vimrc<CR>
nnoremap <leader><F9> :vsp ~/.vimrc<CR>

"insert mode cursor movement up and down
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>

nnoremap <Right> :next<cr>
nnoremap <Left> :prev<cr>
"Skeletons 
au! BufNewFile *.sh,*.bash :-1r /home/adam/.vim/templates/sh
au! BufNewFile *.css :-1r /home/adam/.vim/templates/temp.css
au! BufNewFile *.php :-1r /home/adam/.vim/templates/temp.php
au! BufNewFile *.html :-1r /home/adam/.vim/templates/temp.html
au! BufNewFile *.tex :-1r /home/adam/.vim/templates/temp.tex
au! BufNewFile,BufReadPost *.sld :source ~/.vim/ftplugin/sld.vim
"AUTOCOMMANDS
au! BufEnter *.im :set ft=im
"jump to last edited point
autocmd BufReadPost *
            \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
            \ |   exe "normal! g`\""
            \ | endif

"jump to last edited point in vimrc
autocmd BufReadPost init.vim
            \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
            \ |   exe "normal! g`\""
            \ | endif
set lazyredraw
"
"auto source vimrc & edit
"------------------------
au! BufEnter *.hux :set syntax=hux | set ft=hux
au! BufWritePost .vimrc source %
au! BufWritePost i3rust silent !i3 restart

augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

"auto delete whitespace
"autocmd bufwritepre * %s/\s\+$//e
"Custom Commands functions
"Date Insertion
command! Date execute "normal i<C-R>=strftime('%F %T')<CR><ESC>"
"Make tags with Ctags
command! MakeTags !ctags -R
"let active=1
"autocmd InsertEnter * :call IntoInsert(active)
"autocmd InsertLeave * :call BackFromInsert(active)
"nnoremap <C-S-H> :let active=1<CR>
"nnoremap <C-S-E> :let active=0<CR>
colorscheme sonokai
function! IntoInsert(active)
    if a:active
        set keymap=magyar
    else
        set keymap=
    endif
endfunction
function! BackFromInsert(active)
    set keymap=
endfunction

iabbrev Ãºn Ãºgynevezett
let @d="fffdl"

function! HelpOnly()
    :help
    :only
endfunction

let @q="/h2A  €ýavit:€kl€kl€kl€kl=€kb€kr+1€kr€kr€kr-1 €kbw! %_tag.html:nextgg"

nnoremap <leader>y v$"ay
nnoremap <leader>p D"apjddk
nnoremap <leader><right> :right<CR>


function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"empty (b) or blank (n) lines reduce
nnoremap ;b   GoZ<Esc>:g/^$/.,/./-j<CR>Gdd
nnoremap ;n   GoZ<Esc>:g/^[ <Tab>]*$/.,/[^ <Tab>]/-j<CR>Gdd
