set nocompatible
let mapleader = "<space>"
vnoremap y "+y
set path+=**
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set nobackup
set nowritebackup
set mouse=a
set noswapfile
set smartindent
set autoindent
filetype plugin indent on
set number
set relativenumber
syntax on 
syntax enable
colorscheme murphy
set showcmd
set laststatus=2
set statusline=%(%2*%m%w%k%q\%*\%)%(%6*%<%f%*%)\%=%a%-4y%(\ %5*\ %n\ %*%)\%(%4*\ %l%*/%3*%L\ %*%1*%P%*%)
hi User6 ctermfg=15 ctermbg=236
hi User3 ctermfg=82 ctermbg=236       
hi User2 ctermfg=202 ctermbg=0
hi User5 ctermbg=243 ctermfg=15           
hi User1 ctermfg=15 ctermbg=236
hi StatusLine ctermfg=15 ctermbg=236 cterm=bold
hi StatusLineNC ctermfg=15 ctermbg=238 cterm=bold                                   
inoremap jk <ESC>
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
nmap <C-k> <C-w>W
map <C-j>  <C-w>w
map <C-_> / <C-w>_
map <C-\>  <C-w>|
map <C-=>  <C-w>=
map <space>h :bprevious<CR>
nmap <space>l :bnext<CR>
nnoremap <space>& :args<cr>
nnoremap <space>. :Vex<CR>
nnoremap <space>" :registers<CR>
nnoremap <space>? :help<CR>
nnoremap <space>' :marks<CR>
nnoremap <space>@ :buffers<CR>
nnoremap <space>, :history<CR>
nnoremap <space>! :messages<CR>
nnoremap <space>q q/
nnoremap <space>; :changes<C-R>
nnoremap n nzz
nnoremap N Nzz
nnoremap L <C-d>zz
nnoremap H <C-u>zz
augroup filetype_txt
	autocmd!
	autocmd FileType txt setlocal foldermethod=marker
augroup END
