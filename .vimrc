"" PATHOGEN
execute pathogen#infect()
syntax on
filetype plugin indent on

"" SYSTEM SETTINGS
set nocompatible
set noswapfile
set pastetoggle=<F2>
set relativenumber

"" SPACING SETTINGS
set autoindent
set shiftround
set smarttab
set shiftwidth=2
set tabstop=2

"" UNDO SETTINGS
set undofile
set undodir=~/.vim/undodir
set history=1000
set undolevels=1000

"" SEARCH SETTINGS
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

"" KEY BINDINGS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap ` :noh<return><esc>

"" DISPLAY SETTINGS
highlight default link EndOfLineSpace ErrorMsg
match EndOfLineSpace / \+$/
autocmd InsertEnter * hi link EndOfLineSpace Normal
autocmd InsertLeave * hi link EndOfLineSpace ErrorMsg

"" COLOR SCHEME
if &t_Co >= 256 || has("gui_running")
	colorscheme mustang
endif
if &t_Co > 2 || has("gui_running")
  syntax on
endif

"" PLUG-IN INSTALLATIONS
" cd ~/.vim/bundle && git clone git://github.com/kien/ctrlp.vim.git
