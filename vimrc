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
Plugin 'vim-syntastic/syntastic'
" Plugin 'ajh17/VimCompletesMe'
" Plugin 'justmao945/vim-clang'
Plugin 'rust-lang/rust.vim'
" Plugin 'Valloric/YouCompleteMe'

" end of vundle part
call vundle#end()
filetype plugin indent on

" --------------------- personnal config part ---------------------
colorscheme desert

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number		" show line number at left
set mouse=a		" enable mouse usage if possible	
syntax on		" Switch syntax highlighting on, when the terminal has colors
"set hlsearch		" Also switch on highlighting the last used search pattern.

" enhance tab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Latex config
autocmd Filetype tex setl updatetime=1
" let g:livepreview_previewer = 'open -a texshop'

"add Ctrl-i shortcut for shebang exec
map <c-i> :w <bar> !%:p <cr>

" map nerd tree
map <C-n> :NERDTreeToggle<CR>
