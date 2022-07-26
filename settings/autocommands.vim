augroup mygroup 
  au!
    "jump to last edited location
    autocmd BufReadPost *
                \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
                \ |   exe "normal! g`\""
                \ | endif

    "jump to last edited location (in vimrc)
    autocmd BufReadPost init.vim
                \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
                \ |   exe "normal! g`\""
                \ | endif

    "resize vim on terminal size change
    au! VimResized * execute "normal! \<c-w>="

    "refresh snippets saving the snippets file
    au! BufWritePost *.snippets execute :call UltiSnips#RefreshSnippets()
    
    "auto source vimrc & edit
    "------------------------
    "set hux file format and sintax
    au! BufEnter *.hux :set syntax=hux | set ft=hux

    "source files on edit
    au! BufWritePost .vimrc,.exrc source %

    "restart Coc on config save
    au! BufWritePost coc-settings.json silent exec "CocRestart"

    "source file which sourced by vimrc
    au! BufWritePost autocommands.vim,plugins.vim,mappings.vim,abbrev.vim,highlight.vim source %

    "highlight comments in a json file
    au! FileType json syntax match Comment +\/\/.\+$+
  augroup END


"Unused, deprecated or experimental
"----------------------------------
"au! BufLeave *.json,*.js,*.html,*.css,*.md exe "CocDisable"
"au! BufEnter *.json,*.js,*.html,*.css exe "CocEnable"
