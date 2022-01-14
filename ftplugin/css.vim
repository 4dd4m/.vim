"sort all lines between { }
command! Sortcss :g#\({\n\)\@<=#.,/}/sort
au BufWritePre FileType *.css !Sortcss<cr>
