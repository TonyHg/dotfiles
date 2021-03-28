set title

set number
set ruler
set wrap

set scrolloff=3

set ignorecase
set smartcase

set incsearch

set hlsearch

" No Bell sound
set visualbell

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set noerrorbells
set belloff=all

" Natural backspace
set backspace=indent,eol,start

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

set smartindent

" Set Shift Tab and Tab
" for command mode
nnoremap <S-Tab> <<
nnoremap <Tab> >>
" for insert mode
inoremap <S-Tab> <C-d>

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

" Clang Format
function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction

autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.vert,*.frag :call FormatBuffer()
