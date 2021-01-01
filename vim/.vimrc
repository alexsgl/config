"       .__  
" ___  _|__| ____________   ____   
" \  \/ /  |/     \_  __ \_/ ___\ 
"  \   /|  |  Y Y  \  | \/\  \___ 
"   \_/ |__|__|_|  /__|    \___  >
"                \/            \/ 
" 

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chr4/nginx.vim'
call plug#end()
let g:airline_theme='violet'
set number
syntax on
filetype indent off
set expandtab
set ic
set ignorecase
set noshowmode

