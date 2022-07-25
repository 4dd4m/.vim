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
Plug 'junegunn/fzf',{ 'do' : { -> fzf#install() }}
Plug 'junegunn/fzf.vim',
Plug 'sheerun/vim-polyglot',
Plug 'jiangmiao/auto-pairs', 
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<leader><BS>'
let g:AutoPairsShortcutToggle = '<leader>m'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x',
  \ 'for' : ['javascript', 'markdown',  'json', 'vue','vimwiki', 'html', 'typescript', 'bash']
  \ }

" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'crlf')
let g:prettier#config#print_width = 120

"JAVASCRIPT RELATED
Plug 'leafOfTree/vim-vue-plugin', {'for': 'vue'}

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
Plug 'SirVer/ultisnips'," { 'for': ['c','javascript','js','vue','tex','java','python','sh','bash','html'] }
Plug 'mattn/emmet-vim' ", {'for' : ['html','php','vue'] } "Expand by: C-Y + ,
Plug 'neoclide/coc.nvim', {'branch': 'release'},
"Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tpope/vim-fugitive',
"Plug 'jwalton512/vim-blade', {'for' : 'php'}
call plug#end()
