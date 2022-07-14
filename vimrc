filetype plugin indent on
let mapleader = '\' "Leader key is <SPACE>ii
""Sets And Lets
set termguicolors
set smartindent tabstop=4 softtabstop=4 expandtab shiftwidth=4
set exrc secure
set helplang=hu
set spelllang=en
set nocursorline
set laststatus=2
"set completepopup=height:11,width:60,highlight:InfoPopup
set signcolumn=no
set magic
set ignorecase smartcase incsearch 
set linebreak wrap wrapscan
set nocompatible
set noswapfile nobackup nowritebackup
set number relativenumber
set autowriteall 
set ruler
set splitbelow splitright
set backspace=2
set updatetime=100
set undofile undodir=~/.vim/undodir
set wildmenu
set showcmd
"set path=.,/usr/include,,~/.vim/ftplugin/,~/tmp/nodeApp
set background=dark
set nofoldenable
set autoread
set autowrite

""formatting json
command Pretty !Pretty %:p

nnoremap <leader>/ :nohl<CR>
nnoremap <Leader>\ :Buffers<CR>
nnoremap <leader>n :cn<CR>
nnoremap <leader>b :cp<CR>
nnoremap <leader>on :only<CR>
nnoremap <leader>us :vimgrep <cword> **/*.php<CR>:copen<CR>

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

"WINDOWS PLUG
if has("win32")
    nnoremap <F9> :e ~/_vimrc<CR>
    let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="~/.vim/UltiSnips"
    call plug#begin('~/vimfiles/autoload')
    "GUI
    if has("gui")
        set guifont=Source\ Code\ Pro\ 16
        set toolbar=
        set guioptions=
        set cmdheight=1
        :be mswin
        highlight Cursor guifg=white guibg=black
        highlight iCursor guifg=white guibg=steelblue

endif
"LINUX PLUG
else
    nnoremap <F9> :e ~/.vimrc<CR>
    call plug#begin('~/.vim/plugged')
endif
call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
"SYSTEM RELATED
"Plug 'junegunn/fzf',{ 'do' : { -> fzf#install() }}
Plug 'junegunn/fzf.vim',
Plug 'sheerun/vim-polyglot',
Plug 'jiangmiao/auto-pairs', 
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<leader><BS>'
let g:AutoPairsShortcutToggle = '<leader>m'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x',
  \ 'for' : ['javascript', 'markdown', 'vimwiki', 'html', 'typescript', 'bash']
  \ }

let g:prettier#config#print_width = 80

"JAVASCRIPT RELATED
"Plug 'leafOfTree/vim-vue-plugin', {'for': 'vue'}

"Plug 'khzaw/vim-conceal'
"MARKDOWN RELATED
Plug 'plasticboy/vim-markdown', {'for' : 'markdown'}
Plug 'iamcco/markdown-preview.vim',{ 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug','md']}
"Plug 'KeitaNakamura/tex-conceal.vim', { 'for': ['tex', 'markdown']}
"Plug 'vimwiki/vimwiki', 
"Plug 'lervag/vimtex', { 'for': 'tex', 'tag': 'v1.6' }
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Plug 'iamcco/mathjax-support-for-mkdp', { 'for': 'tex' }


"DEV RELATED
Plug 'SirVer/ultisnips'," { 'for': ['c','javascript','js','tex','java','python','sh','bash','html','vue'] }
"Plug 'mattn/emmet-vim' ", {'for' : ['html','php','javascript','vue'] } "Expand by: C-Y + ,
Plug 'neoclide/coc.nvim', {'branch': 'release','for' :['java','python','javascript','js','typescript','php','html','vue']}
"Plug 'neoclide/coc.nvim', {'branch': 'release'},
"Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tpope/vim-fugitive',
"Plug 'jwalton512/vim-blade', {'for' : 'php'}

call plug#end()
colorscheme sonokai

"hi clear SpellBad
"hi SpellBad term=reverse ctermbg=9 gui=undercurl guisp=Red
"hi CocUnusedHighlight term=reverse gui=undercurl ctermbg=214 ctermfg=16
"hi javascriptScriptBlock cterm=bold ctermfg=110 gui=bold guifg=#76cce0

let g:vim_vue_plugin_load_full_syntax = 0
let g:vim_vue_plugin_highlight_vue_attr = 0
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript', 'typescript'],
      \   'style': ['css', 'scss', 'sass', 'less'],
      \   'i18n': ['json', 'yaml'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 1,
      \'debug': 0,
      \}

"Markdown Preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
let g:mkdp_theme = 'dark'


let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }

hi CocErrorHighlight term=reverse ctermfg=235 ctermbg=203 guifg=#2c2e34 guibg=#ff6077
" Show syntax highlighting groups for word under cursor
nmap <F2> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"Setup the diff | Used for VimDocHu
"nnoremap <F5> <C-w>l<C-w>l:diffoff<CR><c-w>h<c-w>h
nnoremap <F8> :e ~/.vim/ftplugin/%:e.vim<CR>

"next match
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>

"change in last text objects
onoremap il) :normal! $F)hvi)<cr>
onoremap il" :normal! $F"hvi"<cr>
onoremap il' :normal! $F'hvi'<cr>

"edit file types
function! EditFileType()
    let b:fileType = expand('%:e')
    if b:fileType == "js" || b:fileType == "vue"
        execute "normal :e ~/.vim/ftplugin/javascript.vim\<CR>"
    elseif b:fileType == "typescript" || b:filetype == "ts"
        execute "normal :e ~/.vim/ftplugin/typescript.vim\<CR>"
    elseif b:fileType == "md" || b:fileType == "vimwiki"
        execute "normal :e ~/.vim/ftplugin/vimwiki.vim\<CR>"
    else
        execute "normal :e  ~/.vim/ftplugin/%:e.vim\<CR>"
    endif
endfunc

""Switch trigger
""-------------
let g:switch_mapping = "¬"
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
            \   ['public','private','protected','static']
            \]

let g:loaded_python_provider = 1 
let g:netrw_preview   = 1
let g:netrw_winsize   = 30

"Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsEditSplit="vertical" "ultisnips in split

"CtrlP
let g:ctrlp_map = '<C-p>'
set wildignore+=.git/*,.hg/*,.svn/*,*/laravel/mysql/*
set wildignore+=~/windows/*

"Laravel
set wildignore+=*/node_modules/*,*/config/*,*/vendor/*
set wildignore+=*/sail_mysql/*,*/bootstrap/*,artisan,*lock*,*docker*,*.xml
set wildignore+=*/storage/framework**,/home/adam/windows/*
"disabled for vuejs set wildignore+=*/public/*
nnoremap <c-p> :CtrlPClearCache<bar>CtrlP<cr>
"set t_Co=256

nnoremap n nzz
"nmap <leader>ran :!ranger<CR><CR>

"sorround tags
nnoremap <leader>" :norm  viwdi"<esc>p<esc>a"<esc>
nnoremap <leader>' :norm  viwdi'<esc>p<esc>a'<esc>
nnoremap <leader>` :norm  viwdi`<esc>p<esc>a`<esc>
nnoremap <leader>] :norm  viwdi[<esc>p<esc>a]<esc>
nnoremap <leader>[ :norm  viwdi[<esc>p<esc>a]<esc>
nnoremap <leader>) :norm  viwdi(<esc>p<esc>a)<esc>
nnoremap <leader>( :norm  viwdi(<esc>p<esc>a)<esc>
nnoremap <leader>{ :norm  viwdi{<esc>p<esc>a}<esc>
nnoremap <leader>} :norm  viwdi{<esc>p<esc>a}<esc>
nnoremap <leader>ex :Explore<cr>

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
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>

"Split Navigation
"-------------------------
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

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
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b
inoremap <C-a> <C-o>A

nnoremap <Right> :next<cr>
nnoremap <Left> :prev<cr>

"vim 2html export
let g:html_font = "Ubuntu Mono"
let g:html_use_xhtml = 1

let g:vimwiki_list = [{'path': '~/home/content/en/personalKnowledgeGraph/',
                       \ 'index': 'README', 'ext': '.md',
                       \ 'name' : 'pKg',
                       \ 'syntax' : 'markdown'}]

augroup mygroup
    au!
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

    "skeletons
    "resize vim on terminal size change
    au! BufWritePost UltiSnips/*.snippets execute :call UltiSnips#RefreshSnippets()
    au! VimResized * execute "normal! \<c-w>="
    
    "auto source vimrc & edit
    "------------------------
    au! BufEnter *.hux :set syntax=hux | set ft=hux
    "au! BufEnter *.js :source /home/adam/.vim/ftplugin/javascript.vim
    au! BufWritePost .vimrc source %
    au! BufWritePost .exrc source %
augroup END

""Date Insertion
command! Date execute "normal i<C-R>=strftime('%F %T')<CR><ESC>"

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

"change the third "" pair
:nnoremap c3" 06f"ci"


"vue course read
nnoremap <F5> :r !tail -11 index.html<CR>
nnoremap <F6> :r app.js<CR>

nnoremap <c-b> <nop>

"common abbrevs
source ~/.vim/abbrev.vim

set mouse=a

cabbrev aleq !column -t -s= -o=
