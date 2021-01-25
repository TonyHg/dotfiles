" .vimrc config - Tony


" Enable setting title
set title

" Display line numbers on the left
set number

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Whitespace
set wrap

" Cursor motion
set scrolloff=3

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2

" No Bell sound
set visualbell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set noerrorbells
set belloff=all

" Natural backspace
set backspace=indent,eol,start

" Allow hidden buffers
set hidden

" Use of the mouse
set mouse=ra

" Set number max of char per line
set cc=80

" Display tabs, end of line and trail
set list listchars=tab:\|·,eol:¬,trail:·,space:·

" Set tab to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Tabs are real tabs when editing makefile
autocmd Filetype make setlocal noexpandtab

" Return add indent
set smartindent

" Search down into subfolder
set path+=**

" Display all matching file when tab
set wildmenu

" Theme
syntax enable
colorscheme monokai
" colorscheme molokai-transparent
" colo slate

" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
