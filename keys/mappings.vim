" Better nav for omnicomplete inoremap <expr> <c-j> ("\<C-n>") inoremap <expr> <c-k> ("\<C-p>")
" Use alt + hjkl to resize windows
nnoremap <M-K>   :resize -2<CR>
nnoremap <M-J>    :resize +2<CR>
nnoremap <M-L>    :vertical resize -2<CR>
nnoremap <M-H>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
noremap <Leader>h :<C-u>split<CR>nnoremapnoremap
noremap <Leader>v :<C-u>vsplit<CR>nnoremap
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

map <Leader><Leader> <Plug>(easymotion-prefix)
" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>g. :split term://git add .<CR>i
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :split term://git push<CR>i
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
nnoremap <Leader>o :.Gbrowse<CR>

" Move lines up/down
vmap <M-j> <Plug>MoveBlockDown
vmap <M-k> <Plug>MoveBlockUp
nmap <A-j> <Plug>MoveLineDown
nmap <A-k> <Plug>MoveLineUp


"*****************************************************************************
"" Abbreviations
"*****************************************************************************
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
"remove trailing spaces
nnoremap <C-k><C-x> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" DOS mode to remove ^M
nnoremap <silent> <C-k><C-r> :e ++ff=dos<CR>
nnoremap <silent> <C-k><C-s> :syntax sync fromstart<CR>

" Opens an edit command with the path of the currently edited file filled in
" noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
"" Opens a tab edit command with the path of the currently edited file filled
" noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Copy/Paste to Clipboard
noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>