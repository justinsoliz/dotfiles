
execute pathogen#infect()
syntax on
filetype plugin indent on

" Must come first because it changes other options.
set nocompatible                  

" show the status line all the time
set laststatus=2

" Center screen with space
nmap <space> zz

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" map leader to comma
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Command T
let g:CommandTCursorStartMap='<leader>f'
map<leader>f :CommandTFlush<cr>\|:CommandT<cr>
map<leader>gf :CommandTFlush<cr>\|:CommandT %%<cr>

let g:CommandTClearMap='<S-u>'

" ignore node modules and bower components
set wildignore+=node_modules,bower_components,client/components

" NerdCommenter configuration
let g:NERDSpaceDelims=1


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

" tab configuration
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent

" backup configuration
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" setup colorscheme
let g:solarized_termcolors=256
set background=dark
" set background=light
" colorscheme solarized
colorscheme railscasts

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>t :call RunTestFile()<cr>
map <leader>T :call RunNearestTest()<cr>
map <leader>a :call RunTests('./tests')<cr>
" map <leader>c :w\|:!script/features<cr>
map <leader>w :w\|:!script/features --profile wip<cr>
"map <leader>r :call RSpecFile()<cr>
"map <leader>R :call RSpecCurrent()<cr>

"function! RSpecFile()
  "exec ":!RAILS_ENV=test bundle exec rspec --color spec/"
"endfunction

"function! RSpecCurrent()
  "execute("!clear && rspec " . expand("%p") . ":" . line("."))
"endfunction

function! RunTestFile(...)
    echo "running test file..."

    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    "let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\)$') != -1
    let in_test_file = match(expand("%"), '\(_test.js\)$') != -1
    if in_test_file
        echo "has in test file"
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        echo "no test file found..."
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number . " -b")
endfunction

function! SetTestFile()
    " Set the test file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo


    if match(a:filename, '\.js$') != -1
        exec ":!NODE_ENV=test mocha --require should -R spec -u bdd " . a:filename

    elseif match(a:filename, '\.feature$') != -1
        exec ":!script/features " . a:filename

    else
        if filereadable("script/test")
            exec ":!script/test " . a:filename
        elseif filereadable("Gemfile")
            exec ":!bundle exec rspec --color " . a:filename
        else
            "exec ":!rspec --color " . a:filename
            exec ":!NODE_ENV=test mocha --require should -R spec -u bdd " . a:filename
        end
    end
endfunction
