call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
syntax enable
set background=dark
colorscheme solarized
set cursorline
highlight LineNr ctermfg=red
set guioptions-=m  "remove menu bar
filetype on                                                     " Enable filetype detection
filetype indent on                                              " Enable filetype-specific indenting
filetype plugin on                                              " Enable filetype-specific plugins
syntax on                                                       " syntax highlight
set t_Co=256                                                    " set 256 colors in vim
set autoread                                                    " read a changed file on disk
set showmode                                                    " always show what mode we're currently editing in
set timeoutlen=1200 " A little bit more time for macros
set ttimeoutlen=50  " Make Esc work faster
set nowrap                                                      " don't wrap lines
set tabstop=4                                                   " a tab is four spaces
set softtabstop=4                                               " when hitting <BS>, delete 4 spaces insted of 1
set expandtab                                                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                                                " number of spaces to use for autoindenting
set autoindent                                                  " always set autoindenting on
set copyindent                                                  " copy the previous indentation on autoindenting
set clipboard=unnamedplus
set shiftround                                                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start                                  " allow backspacing over everything in insert mode
set ignorecase                                                  " ignore case when searching
set number                                                      " always show line numbers
set rnu                                                         " relative number
set cursorline                                                  " underline the current line, for quick orientation
set cursorcolumn                                                " have a vertical line marking the cursor column
set hlsearch                                                    " highlight search terms
set virtualedit=block                                           " allow the cursor to go in to 'invalid' places
set incsearch                                                   " show search matches as you type
set hidden                                                      " hide buffers instead of closing them with unwritten changes
set switchbuf=useopen                                           " reveal already opened files instead of opening new buffers
set history=1000                                                " remember more commands and search history
set undolevels=1000                                             " use many muchos levels of undo
set nobackup                                                    " do not keep backup files, it's 70's style
set noswapfile                                                  " do not write annoying intermediate swap files,
set undofile                                                    " keep an undo file (undo changes after closing)
set undodir=~/.vim/vimundo
set directory=~/.vim/.tmp,/tmp                                  " store swap files in one of these directories 
set viminfo='20,\"80                                            " r/w a .viminfo file, not store more than 80 lines of registers
set textwidth=170        " not 80 cause helps in vs mode
set wildmenu                                                    " tab completion for files/buffers like bash
set title                                                       " change the terminal's title
set visualbell                                                  " don't beep
set noerrorbells                                                " don't beep
set showcmd                                                     " show command at right bottom; this also shows visual selection info
set ttyfast                                                     " always use a fast terminal
set spell spelllang=en_us
set nospell
set colorcolumn=80,135                                          " Github limit
set diffopt+=vertical                                           " default split method is to split in a verical split
augroup FTOptions
autocmd!
autocmd filetype xml,xsd,html,javascript,yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2 nostartofline
autocmd FileType xdefaults                    setlocal commentstring=!\ %s
autocmd filetype c,cpp,java,go                setlocal foldmethod=syntax foldlevel=99 complete-=k
autocmd FileType liquid,markdown,text,txt     setlocal complete+=k
autocmd filetype vim                          setlocal foldmethod=marker keywordprg=:help
autocmd filetype sh                           setlocal keywordprg=man shiftwidth=2
autocmd filetype xml,sh,vim,tex,html,lua      setlocal foldmethod=marker foldlevel=99
autocmd Filetype gitcommit                    setlocal spell textwidth=72
autocmd FileType git,gitcommit                setlocal foldmethod=syntax
augroup end
