" Settings -------------------------{{{
set nocompatible
let mapleader = "<space>"
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
"}}}

" Statusline -------------------{{{
set laststatus=2
set statusline=%(%2*%m%w%k%q\%*\%)%(%6*%<%f%*%)\%=%a%-4y%(\ %5*\ %n\ %*%)\%(%4*\ %l%*/%3*%L\ %*%1*%P%*%)
hi User6 ctermfg=15 ctermbg=236
hi User3 ctermfg=82 ctermbg=236       
hi User2 ctermfg=202 ctermbg=0
hi User5 ctermbg=243 ctermfg=1
hi User1 ctermfg=15 ctermbg=236
hi StatusLine ctermfg=15 ctermbg=236 cterm=bold
hi StatusLineNC ctermfg=15 ctermbg=238 cterm=bold
"}}}

"Vimscripts filetype ----------{{{
augroup filetype_vim
	autocmd!
	autocmd Filetype vim setlocal foldmethod=marker
augroup END
"}}}

" Keymappings -----------------{{{
nnoremap <Leader>h :silent execute "help " . expand("<cword>") <Bar> echo "Help topic not found: " . expand("<cword>")<CR>
vnoremap y "+y   
inoremap jj <ESC>
vnoremap jj <esc>
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
map <leader>h :bprevious<CR>
nmap <leader>l :bnext<CR>
nnoremap <leader>& :args<cr>
nnoremap <leader>. :Vex<CR>
nnoremap <leader>" :registers<CR>
nnoremap <leader>? :help<CR>
nnoremap <leader>' :marks<CR>
nnoremap <leader>@ :buffers<CR>
nnoremap <leader>, :history<CR>
nnoremap <leader>! :messages<CR>
nnoremap <leader>q q/
nnoremap <leader>; :changesC-R>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>< diwi<>^[<80><fd>aP
nnoremap n nzz
nnoremap N Nzz
nnoremap L <C-d>zz
nnoremap H <C-u>zz
"}}}

" Augroups --------------------{{{
augroup filetype_*
	autocmd!
	autocmd FileType * setlocal foldmethod=marker
augroup END
call plug#begin('~/.vim/plugged')
Plug 'rhysd/vim-lsp-ale'
call plug#end()
augroup filetype *
	autocmd!
	autocmd FileType .md setlocal 
	autocmd FileType ja:vascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>

augroup END
"}}}
