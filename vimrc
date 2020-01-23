" ---------------------  Vundle config part  ---------------------
set nocompatible
filetype off

" add Vundle to runtime path and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" say tu vundle to manage itself
Plugin 'gmarik/Vundle.vim'

" installed plugins
" Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'scrooloose/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'rust-lang/rust.vim'
Plugin 'tikhomirov/vim-glsl'
Plugin 'takac/vim-hardtime'
Plugin 'matze/vim-move'

" end of vundle part
call vundle#end()

" --------------------- personnal config part ---------------------
colorscheme desert

filetype plugin indent on
" Switch syntax highlighting on, when the terminal has colors
syntax on		

" hardtime
let g:hardtime_default_on = 1

let g:move_key_modifier = 'C'

" search in subfolders
set path+=**            
" display menu when searching
set wildmenu            
" create tag file  
command! MakeTags !ctags -R . 

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number		" show line number at left
set relativenumber      " show distance from current line at left
set mouse=a		" enable mouse usage if possible	
set tabpagemax=100          " set number of tabs
"set hlsearch		" Also switch on highlighting the last used search pattern.

" enhance tab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" add Ctrl-i shortcut for shebang exec
map <c-i> :w <bar> !%:p <cr>

" map nerd tree
map <C-n> :NERDTreeToggle<CR>
