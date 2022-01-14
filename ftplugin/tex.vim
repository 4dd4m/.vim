"Vimtex Compiler Setups
if empty(v:servername) && exists('*remote_startserver')
      call remote_startserver('VIM')
    endif

nnoremap <F1> :copen<cr>
nnoremap <F2> :close<cr>
nnoremap <F3> :cnext<cr>
nnoremap <F4> :cprev<cr>

let g:tex_conceal_frac=1
set conceallevel=2
let g:tex_conceal="abdgm"

let maplocalleader = ","
let g:vimtex_compiler_latexmk = {
        \ 'backend' : 'process',
        \ 'background' : 1,
        \ 'build_dir' : 'aux',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \ '-xelatex',
        \ '-file-line-error',
        \ '-synctex=1',
        \ '-interaction=nonstopmode',
        \ ],
        \}
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_general_viewer = 'zathura'
let g:tex_flavor = 'latex'
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'lualatex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_quickfix_autoclose_after_keystrokes = 1
let g:Tex_IgnoredWarnings =
    \'Underfull'."\n".
    \'Overfull'."\n".
    \'Package geometry Warning:'."\n".
    \'specifier changed to'."\n".
    \'You have requested'."\n".
    \'Missing number, treated as zero.'."\n".
    \'Citation %.%# undefined'."\n".
    \'Double space found.'."\n".
    \'LaTeX Warning: Unused global option(s)'."\n"
let g:Tex_IgnoreLevel = 8
"let g:vimtex_quickfix_ignore_all_warnings = 1
let g:vimtex_quickfix_enabled = 0
"conceal the cites
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
let g:vimtex_quickfix_enabled = 1
