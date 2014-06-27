
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible                  " Must come first because it changes other options.

" show the status line all the time
set laststatus=2

" add vim branch to status line
" set statusline+=%{fugitive#statusline()}
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

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
syntax enable
set backspace=indent,eol,start    " Intuitive backspacing.
set cmdheight=2
set cursorline
set hidden                        " Handle multiple buffers better.
set hlsearch                      " Highlight matches.
set incsearch                     " Highlight matches as you type.
set ignorecase                    " Case-insensitive searching.
set number                        " Show line numbers.
set numberwidth=5
set ruler                         " Show cursor position.
set showmode                      " Display the mode you're in.
set showtabline=2
set smartcase                     " But case-sensitive if expression contains a capital letter.
set switchbuf=useopen
set winwidth=89
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" setup colorscheme
" let g:solarized_termcolors=256
" set background=dark
" set background=light
" colorscheme solarized
colorscheme railscasts

