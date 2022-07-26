nnoremap <leader>? :Maps<CR>
nnoremap <leader>/ :nohl<CR>
nnoremap <Leader>\ :Buffers<CR>
nnoremap <leader>n :cn<CR>
nnoremap <leader>p :cp<CR>
nnoremap <leader>on :only<CR>
nnoremap <leader>us :vimgrep <cword> **/*.php<CR>:copen<CR>

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

nnoremap n nzz

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

"insert mode cursor movement up and down
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b
inoremap <C-a> <C-o>A

nnoremap <Right> :next<cr>
nnoremap <Left> :prev<cr>

"empty (b) or blank (n) lines reduce
nnoremap ;b   GoZ<Esc>:g/^$/.,/./-j<CR>Gdd

"change the third "" pair
nnoremap c3" 06f"ci"

nnoremap gd gdzt 

if has("gui_running")
nnoremap ZZ :update<CR>
nnoremap ZQ :echo "Cannot exit"<CR>
endif
