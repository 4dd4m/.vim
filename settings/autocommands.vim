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

    "resize vim on terminal size change
    au! BufWritePost *.snippets execute :call UltiSnips#RefreshSnippets()
    au! VimResized * execute "normal! \<c-w>="
    
    "auto source vimrc & edit
    "------------------------
    au! BufEnter *.hux :set syntax=hux | set ft=hux
    au! BufWritePost .vimrc source %
    au! BufWritePost .exrc source %
    "au! BufLeave *.json,*.js,*.html,*.css,*.md exe "CocDisable"
    "au! BufEnter *.json,*.js,*.html,*.css exe "CocEnable"
augroup END
