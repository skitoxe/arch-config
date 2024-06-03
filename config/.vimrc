syntax enable
set number
set relativenumber
"set cursorline
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch
set noerrorbells visualbell t_vb=
if has('autocmd')
          autocmd GUIEnter * set visualbell t_vb=
  endif
