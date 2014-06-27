
execute pathogen#infect()
syntax on
filetype plugin indent on

" show the status line all the time
set laststatus=2

" add vim branch to status line
" set statusline+=%{fugitive#statusline()}
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Center screen with space
nmap <space> zz

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" map leader to comma
let mapleader=","

" miscellaneous settings
set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set showtabline=2
set winwidth=89

