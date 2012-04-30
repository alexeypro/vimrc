set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" General 
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'altercation/vim-colors-solarized'
Bundle 'cschlueter/vim-ir_black'
Bundle 'scrooloose/nerdtree'
Bundle 'https://github.com/tpope/vim-fugitive.git'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'mutewinter/vim-indent-guides'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'kana/vim-smartinput'
Bundle 'sjl/clam.vim'

" Web
Bundle 'mattn/zencoding-vim'
Bundle 'HTML-AutoCloseTag'
Bundle 'juvenn/mustache.vim'
Bundle 'groenewege/vim-less'
Bundle 'Rykka/ColorV'
Bundle 'gregsexton/MatchTag'
Bundle 'wavded/vim-stylus'
Bundle 'JavaScript-Indent'
Bundle 'tangledhelix/vim-octopress'
Bundle 'tpope/vim-haml'

" Javascript / node / coffeescript 
Bundle 'pangloss/vim-javascript'
Bundle 'itspriddle/vim-jquery'
Bundle 'digitaltoad/vim-jade'
Bundle 'leshill/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'manalang/jshint.vim'
Bundle 'mmalecki/vim-node.js'
Bundle 'lambdalisue/nodeunit.vim'

" Misc
Bundle 'vim-scripts/nginx.vim'

set tabstop=4
set softtabstop=4
set sts=4
set sw=4
set expandtab

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Javascript / Coffeescript / Node
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.coffee set filetype=coffee
au! BufRead,BufNewFile *.json set filetype=json 
au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.eco set filetype=html
au BufNewFile,BufRead *.coffee set shiftwidth=4
au FileType javascript set shiftwidth=4
au BufNewFile,BufRead *.coffee set tabstop=4
au FileType javascript set tabstop=4
au BufNewFile,BufRead *.coffee set softtabstop=4
au FileType javascript set softtabstop=4

" Web
au BufNewFile,BufRead *.styl set filetype=stylus
au BufNewFile,BufRead *.stylus set filetype=stylus
au! BufWinEnter *.scss call colorv#preview("S")
au! bufwritepost *.scss call colorv#preview("S")
au! BufWinEnter *.styl call colorv#preview("S")
au! bufwritepost *.styl call colorv#preview("S")
autocmd BufNewFile,BufRead *.markdown setfiletype octopress

set background=dark
colorscheme solarized
call togglebg#map("<F5>")
let g:solarized_termtrans=0
if has ('gui_running')
    if has('mac')
        set gfn=Monaco:h13
    else 
        set guifont=Monaco\ 13
    endif
    set guioptions+=LlRrbmT
    set guioptions-=LlRrbmT
endif
if has('statusline')
    set laststatus=2
    " Broken down into easily includeable segments
    set statusline=%<%f\    " Filename
    set statusline+=%{fugitive#statusline()} "  Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " filetype
    set statusline+=\ [%{getcwd()}]          " current dir
endif

color solarized                 " load a colorscheme
set tabpagemax=15               " only show 15 tabs
set showmode                    " display the current mode

set cursorline                  " highlight current line
hi cursorline guibg=#333333     " highlight bg color of current line
hi CursorColumn guibg=#333333   " highlight cursor