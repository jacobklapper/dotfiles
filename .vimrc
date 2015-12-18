set nocompatible
syntax on

set number
set mouse=a
set title

nore ; :
nore , ;

set autoread                    "Reload files changed outside vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set showmatch
set incsearch
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set ignorecase        "Case insensitive search
set smartcase         "Ignore ignorecase when search term contains upper case

set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd

set background=dark
"colorscheme ChocolateLiqour

" ================ Indentation ======================
"
set autoindent "Indent at the same level of the previous line
set pastetoggle=<F3>
set smartindent "
set smarttab "
set shiftwidth=2 "Use indents of 2 spaces
set softtabstop=2 "Let backspace delete indent
set tabstop=2 "An indentation every two columns
set expandtab "Tabs are spaces, not tabs
autocmd FileType make setlocal noexpandtab "Tabs for Makefiles

filetype plugin indent on "Detect filetypes and appropriate plugins and indentations

"set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

"noremap <Up>   <C-O>gk
"inoremap <Down> <C-O>gj

nnoremap <BS> X
inoremap jk <esc>

cmap w!! w !sudo tee % >/dev/null

if &term =~ "xterm"
  let &t_Co = 256
  let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l\<Esc>8"
  if has("terminfo")
    let &t_Sf = "\<Esc>[3%p1%dm"
    let &t_Sb = "\<Esc>[4%p1%dm"
  else
    let &t_Sf = "\<Esc>[3%dm"
    let &t_Sb = "\<Esc>[4%dm"
  endif
endif
