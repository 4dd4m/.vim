"Mapleader
let mapleader = ' '

"My vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
"Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'vim-jp/vim-java'
Plugin 'preservim/nerdtree'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

let g:indentLine_enabled = 1
let g:indentLine_char = '|'
syntax on

let g:airline#extensions#fzf#enabled = 1

"Switch trigger
"-------------
let g:switch_mapping = "¬"
let g:switch_custom_definitions =
    \ [
    \   ['or', 'and', 'xor'],
    \   ['.','->'],
    \   ['True','False'],
    \   ['true','false'],
    \ ]

colorscheme afterglow
set colorcolumn=80
set textwidth=150
highlight ColorColumn ctermbg=234 guibg=#2c2d27

"fuzzyfinder settings
"--------------------
let g:fzf_action = {
  \ 'ctrl-h': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_history_dir = '~/.local/share/fzf-history'

"autocompletion
"--------------------
set wildmode=longest,list,full
let g:fzf_layout = { 'window': { 'width' : 0.9, 'height' : 0.6 } }

"Continue
"----------
set title
set encoding=utf-8
set number
set relativenumber

"split zoom
"----------
nnoremap <C-m> <C-W>\|<C-W>_
nnoremap <C-n> <C-W>=

"saving with CTRL+S
:nmap <c-s> :write<CR>

"Open Fuzzy finder
:nmap <C-p> :Files<CR>

"F Shortcuts
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>
"run python inside terminal
nnoremap <F8> :w<Cr>:terminal python %<Cr>
"run as shell
nnoremap <F9> :w<Cr>:!%<Cr>
:nmap <silent> <F10> :!%:p<enter>
"manual source
nnoremap <F11> :source ~/.vim/vimrc<CR>
"edit vim
nnoremap <F12> :edit ~/.vim/vimrc<CR>


"Cases
"--------------
set ignorecase
set smartcase

"Disable backups
"---------------
set nobackup
set nowritebackup
set noswapfile

"hlsearch and colors
"-------------------
set hlsearch
set incsearch
set wrapscan
hi MatchParen cterm=bold ctermbg=none ctermfg=green
hi Search ctermbg=Green
hi Search ctermfg=Black

"Indentation
"----------
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

"TabHandling
"----------
nnoremap tn :tabnew<space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>
nnoremap § ^

"access to system clipboard
"--------------------------
set clipboard=unnamed

"Remap to jk
"--------------------------
inoremap jk <Esc>

"Split Navigation
"-------------------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow splitright

"set nocompatible
filetype plugin on

"Set VimWiki to markdown syntax
"--------------------
let wiki_1 = {}
let wiki_1.path       = '~/notes/notes'
let wiki_1.syntax     = 'markdown'
let wiki_1.ext        = '.md'
let wiki_1.index      = 'index'
let wiki_1.path_html  = ' ~/notes/notes/html'

let wiki_2 = {}
let wiki_2.path       = '~/notes/computerScience'
let wiki_2.syntax     = 'markdown'
let wiki_2.ext        = '.md'
let wiki_2.index      = 'index'
let wiki_2.path_html  = '~/notes/computerScience/html'
let g:vimwiki_list = [wiki_1,wiki_2]

noremap <C-H> <C-W><C-H>

"Skeletons
autocmd BufNewFile *.sh,*.bash :r ~/.vim/templates/sh
autocmd BufNewFile *.tex :r ~/.vim/templates/temp.tex
autocmd BufNewFile *.html :r ~/.vim/templates/temp.html
autocmd BufNewFile *.java :r ~/.vim/templates/temp.java

"Map :W to save the document
command! W write
command! Q quit
"Vimlatex
let g:vimtex_compiler_latexmk = {
        \ 'backend' : 'process',
        \ 'background' : 1,
        \ 'build_dir' : '',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
 let g:vimtex_compiler_method = 'latexmk'
 let g:vimtex_view_general_viewer = 'zathura'
 let g:tex_flavor = 'latex'
 let g:livepreview_previewer = 'zathura'
 let g:livepreview_engine = 'pdflatex'

"To limit the width of text to 72 characters displaying in mutt
au BufRead /tmp/mutt-* set tw=72

" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

nnoremap <C-c> :!g++ -o  %:r.out % -std=c++17<Enter>
nnoremap <F4> :!markdown
nnoremap <C-x> :!./%:r.out

"auto source vimrc
"--------------------
autocmd! bufwritepost vimrc source %
autocmd! bufwritepost *.java :!javac %

"auto delete whitespace
autocmd bufwritepre * %s/\s\+$//e




