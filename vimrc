source ~/.vim/settings/plugins.vim
source ~/.vim/settings/mappings.vim
source ~/.vim/settings/functions.vim
source ~/.vim/settings/abbrev.vim
source ~/.vim/settings/highlight.vim
source ~/.vim/settings/autocommands.vim

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

    "resize vim on terminal size change
    au! VimResized * execute "normal! \<c-w>="

""formatting 1 line json
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


"prettier globals
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'crlf')
let g:prettier#config#print_width = 120

"Coc notify's
let g:coc_notify_info_icon="i"
let g:coc_notify_warning_icon="w"
let g:coc_notify_error_icon="E"


let g:ale_sign_column_always = 1
let g:OmniSharp_server_use_net6 = 1
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}



set signcolumn=yes
let g:OmniSharp_highlighting = 3
" Use the vim-plug plugin manager: https://github.com/junegunn/vim-plug
" Remember to run :PlugInstall when loading this vimrc for the first time, so
" vim-plug downloads the plugins listed.
silent! if plug#begin('~/.vim/plugged')
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
call plug#end()
endif

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview', 'popup'
" and 'popuphidden' if you don't want to see any documentation whatsoever.
" Note that neovim does not support `popuphidden` or `popup` yet:
" https://github.com/neovim/neovim/issues/10996
if has('patch-8.1.1880')
  set completeopt=longest,menuone,popuphidden
  " Highlight the completion documentation popup background/foreground the same as
  " the completion menu itself, for better readability with highlighted
  " documentation.
  set completepopup=highlight:Pmenu,border:off
else
  set completeopt=longest,menuone,preview
  " Set desired preview window height for viewing documentation.
  set previewheight=5
endif

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

augroup omnisharp_commands
  autocmd!

  " Show type information automatically when the cursor stops moving.
  " Note that the type is echoed to the Vim command line, and will overwrite
  " any other messages in this space including e.g. ALE linting messages.
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>? <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <C-k> <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

  " Navigate up and down by method/property/field
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  " Find all code errors/warnings for the current solution and populate the quickfix window
  "autocmd FileType cs nmap <silent> <buffer> <c-s> <Plug>(omnisharp_global_code_check)
  " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
  autocmd FileType cs nmap <silent> <buffer> <F1> <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>ac <Plug>(omnisharp_code_actions)
  " Repeat the last code action performed (does not use a selector)
  autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
  autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

  autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

  autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
  autocmd BufWritePost *.cs :OmniSharpGlobalCodeCheck
augroup END

" Enable snippet completion, using the ultisnips plugin
" let g:OmniSharp_want_snippet=1

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
set cmdheight=2
nnoremap cn :cnext<CR>
nnoremap cp :cprev<CR>

let g:OmniSharp_diagnostic_exclude_paths = [
\ 'SongApi$',
\ 'SongApi/$',
\]
