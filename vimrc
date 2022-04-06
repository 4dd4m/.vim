"Sets And Lets
filetype plugin indent on
set autoindent tabstop=4 softtabstop=4 expandtab shiftwidth=4
set exrc secure
set helplang=hu
"hi clear SpellBad
"hi SpellBad cterm=underline
set nocursorline
set laststatus=2
set completepopup=height:11,width:60,highlight:InfoPopup
set magic
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
"set updatetime=100
set path=.,/usr/include,,~/.vim/ftplugin/,~/tmp/nodeApp
set background=light

nnoremap / /\v

"formatting json
command Pretty !Pretty %:p

if has("gui_gtk3")
    set guifont=Source\ Code\ Pro\ 16
    set toolbar=
    set guioptions=
    set cmdheight=1
    :be mswin
endif

"Open help on vertical split
cabbrev vhelp vert help
cabbrev vh vert help

"common abbrevs
iabbrev cosnt const

" Mappings to access buffers
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
let mapleader = ' ' "Leader key is <SPACE>ii
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

nnoremap <leader>n :cn<CR>
nnoremap <leader>b :cp<CR>
nnoremap <leader>on :only<CR>

nnoremap <leader>us :vimgrep <cword> **/*.php<CR>:copen<CR>

"WINDIOWS CONFIG
if has("win32")
    nnoremap <F9> :e ~/_vimrc<CR>
    let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="~/.vim/UltiSnips"
    call plug#begin('~/vimfiles/autoload')
"LINUX CONFIG
else
    nnoremap <F9> :e ~/.vimrc<CR>
    call plug#begin('~/.vim/plugged')
endif
Plug 'sainnhe/sonokai'
Plug 'jwalton512/vim-blade', {'for' : 'php'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lervag/vimtex', { 'for': 'tex', 'tag': 'v1.6' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'iamcco/mathjax-support-for-mkdp', { 'for': 'tex' }
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile','for' :['java','python','javascript','php']}
cabbrev cocjson :e ~/.vim/coc-settings.json<CR>
Plug 'joereynolds/gtags-scope', { 'for' : 'c' }
Plug 'mattn/emmet-vim' ", {'for' : ['html','php','javascript'] } "Expand by: C-Y + ,
Plug 'KeitaNakamura/tex-conceal.vim', { 'for': 'tex' }
Plug 'SirVer/ultisnips', { 'for': ['c','javascript','tex','java','python','sh','bash'] }
Plug 'vimwiki/vimwiki', {'for' : 'md'}
Plug 'iamcco/markdown-preview.vim', {'for' : 'md'}
Plug 'khzaw/vim-conceal'
Plug 'plasticboy/vim-markdown', {'for' : 'markdown'}
Plug 'preservim/nerdtree', {'for' : 'c'}
Plug 'preservim/tagbar', {'for' : 'c'}
Plug 'dyng/ctrlsf.vim', {'for' : 'c'}
Plug 'derekwyatt/vim-fswitch', {'for' : 'c'}
Plug 'derekwyatt/vim-protodef', {'for' : 'c'}
Plug 'jiangmiao/auto-pairs', 
Plug 'tpope/vim-dispatch', {'for' : 'c'}
Plug 'tpope/vim-fugitive',
Plug 'junegunn/fzf',{ 'do' : { -> fzf#install() }}
Plug 'junegunn/fzf.vim',
call plug#end()

hi CocErrorHighlight term=reverse ctermfg=235 ctermbg=203 guifg=#2c2e34 guibg=#ff6077
" Show syntax highlighting groups for word under cursor
nmap <F2> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
"Setup the diff
nnoremap <F5> <C-w>l<C-w>l:diffoff<CR><c-w>h<c-w>h
"nnoremap <F8> :e ~/.vim/ftplugin/%:e.vim<CR>
nnoremap <F8> :vs<CR> :call EditFileType()<CR>
nnoremap <F8> :call EditFileType()<CR>

"buffer switch
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>

"change in last text objects
onoremap il) :normal! $F)vi)<cr>
onoremap il" :normal! $F"vi"<cr>
onoremap il' :normal! $F'vi'<cr>

onoremap in@ :normal! /\v[A-z0-9._]*\@.*\.[a-z]{2,3}\r
nnoremap <f4> :execute ":normal! /^\\zs[A-z0-9._]*\\ze\@.*\.[a-z]*$\rcgn"<CR>

function! EditFileType()
    let b:fileType = expand('%:e')
    if b:fileType == "js"
        execute "normal :e ~/.vim/ftplugin/javascript.vim\<CR>"
    elseif b:fileType == "md"
        execute "normal :e ~/.vim/ftplugin/markdown.vim\<CR>"
    else
        execute "normal :e  ~/.vim/ftplugin/%:e.vim\<CR>"
    endif
endfunc

"magicalcritic@gmail.com

nnoremap <F7> :e ~/.vim/ftplugin/javascript.vim<CR>
nnoremap <leader><F8> :vs ~/.vim/ftplugin/%:e.vim<CR>

let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"

"Switch trigger
"-------------
"set path+="~/.vim/ftplugin"
set rtp+="~/.vim/ftplugin/"
let g:switch_mapping = "|"
let g:switch_custom_definitions = [
            \   ['or', 'and', 'xor'],
            \   ['const', 'let', 'var'],
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
cabbrev snips echom g:UltiSnipsListSnippets<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsEditSplit="vertical" "ultisnips in split
"CtrlP
set wildignore+=.git/*,.hg/*,.svn/*,*/laravel/mysql/*
set wildignore+=~/windows/*
"Laravel
set wildignore+=*/node_modules/*,*/sotrage/*,*/config/*,*/public/*,*/vendor/*
set wildignore+=*/sail_mysql/*,*/bootstrap/*,artisan,*lock*,*docker*,*.xml
let g:ctrlp_map = '<C-p>'
set t_Co=256
colorscheme sonokai

nmap <leader>ran :!ranger<CR><CR>

"sorround tags
nmap <leader>" :norm bi"<esc>ea"<esc>
nmap <leader>' :norm bi'<esc>ea'<esc>
nmap <leader>] :norm bi[<esc>ea]<esc>
nmap <leader>[ :norm bi[<esc>ea]<esc>
nmap <leader>) :norm bi(<esc>ea)<esc>
nmap <leader>( :norm bi(<esc>ea)<esc>
nmap <leader>{ :norm bi{<esc>ea}<esc>
nmap <leader>} :norm bi{<esc>ea}<esc>
nmap <leader>ex :Explore<cr>
"Put ; on the end of the line

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
nnoremap <leader><F9> :vsp ~/.vimrc<CR>

"do not draw screen on running macro
set lazyredraw

"insert mode cursor movement up and down
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>

nnoremap <Right> :next<cr>
nnoremap <Left> :prev<cr>
augroup testgroup
"skeletons
    autocmd!
    au! BufNewFile *.html :-1r /home/adam/.vim/templates/temp.html
    au! BufNewFile *.tex :-1r /home/adam/.vim/templates/temp.tex
    "resize vim on terminal size change
    au! BufWritePost UltiSnips/*.snippets execute :call UltiSnips#RefreshSnippets()
    au! VimResized * execute "normal! \<c-w>="
    "
    "auto source vimrc & edit
    "------------------------
    au! BufEnter *.hux :set syntax=hux | set ft=hux
    "au! BufEnter *.js :source /home/adam/.vim/ftplugin/javascript.vim
    au! BufWritePost .vimrc source %
    au! BufWritePost .exrc source %
    au! BufWritePost i3rust silent !i3 restart
    au! BufWritePost httpd.conf silent !web stop && web start
augroup END



augroup cursorOnTheSamePlace
    "jump to last edited point
    autocmd!
    autocmd BufReadPost *
                \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
                \ |   exe "normal! g`\""
                \ | endif

    "jump to last edited point in vimrc
    autocmd BufReadPost init.vim
                \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
                \ |   exe "normal! g`\""
                \ | endif
augroup END

"Date Insertion
command! Date execute "normal i<C-R>=strftime('%F %T')<CR><ESC>"
"Make tags with Ctags

function! HelpOnly()
    :help
    :only
endfunction

nnoremap <leader><right> :right<CR>

"auto format "for"
nnoremap <leader>for :call AutoFormat()<CR>
function! AutoFormat()
    "With cursor replacement to original
    execute "normal! mx"
    execute "normal! gg=G"
    execute "normal! 'xzz"
endfunc

"empty (b) or blank (n) lines reduce
nnoremap ;b   GoZ<Esc>:g/^$/.,/./-j<CR>Gdd
nnoremap ;n   GoZ<Esc>:g/^[ <Tab>]*$/.,/[^ <Tab>]/-j<CR>Gdd

"change the second "" pair
:nnoremap c2" 04f"ci"
"
"change the third "" pair
:nnoremap c3" 06f"ci"
