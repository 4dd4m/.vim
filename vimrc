filetype plugin indent on
set nocompatible
let mapleader = '\' "Leader key is <SPACE>ii
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
set wildmode=longest:full,full
set showcmd
set background=dark
set nofoldenable
set lazyredraw
set mouse=a

source ~/.vim/settings/plugins.vim
source ~/.vim/settings/mappings.vim
source ~/.vim/settings/functions.vim
source ~/.vim/settings/abbrev.vim
source ~/.vim/settings/autocommands.vim

""formatting json
command! Pretty !Pretty %:p

colorscheme sonokai

"Vim vue
let g:vim_vue_plugin_load_full_syntax = 0
let g:vim_vue_plugin_highlight_vue_attr = 0
let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['typescript'],
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

"let g:loaded_python_provider = 1 
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
