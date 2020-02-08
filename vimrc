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
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'airblade/vim-gitgutter'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'vim-scripts/restore_view.vim'

" plugins for text object
Plugin 'kana/vim-textobj-user'
" search text object plugin at https://github.com/kana/vim-textobj-user/wiki
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-line'
Plugin 'sgur/vim-textobj-parameter'

" end of vundle part
call vundle#end()

" --------------------- personnal config part ---------------------
colorscheme desert

filetype plugin indent on
" Switch syntax highlighting on, when the terminal has colors
syntax on

" find git root dir
let gitdir=system("git rev-parse --show-toplevel 2>/dev/null | tr -d '\\n'")

" hardtime
let g:hardtime_default_on = 1

" move
let g:move_key_modifier = 'C'

" gitgutter
let g:gitgutter_map_keys = 0

" table mode (enable with <leader>tm)
let g:table_mode_corner = "|"

" view (vim save currend position in file and folds)
set viewoptions=cursor,folds,slash,unix
if !empty(gitdir) | exec "set viewdir=".gitdir."/.git/view" | endif

" display menu when searching
set wildmenu

" create tag file
if empty(gitdir)
    command! MakeTags echo "git folder not found"
else
    exec "set tags+=".gitdir."/.git/tags"
    exec "command! MakeTags !cd ".gitdir."/.git; ctags -R .."
endif

" search in subfolders
if empty(gitdir) 
    set path=**
else
    exec "set path=".gitdir."/**"
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"set nobackup           " do not keep a backup file, use versions instead
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set number              " show line number at left
set relativenumber      " show distance from current line at left
set mouse=a             " enable mouse usage if possible
set tabpagemax=100          " set number of tabs
"set hlsearch           " Also switch on highlighting the last used search pattern.
set updatetime=250      " vim update time, useful for gitgutter

" enhance tab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" map nerd tree
map <C-n> :NERDTreeToggle<CR>

" show tabs and trailing spaces
exec "set listchars=tab:\uBB\uBB,trail:\uB7"
set list
