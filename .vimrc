"" PATHOGEN
execute pathogen#infect()
syntax on
filetype plugin indent on

"" UPDATE VIM ON THE FLY WITH CHANGES TO VIMRC
if has("autocmd")
  autocmd!
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
autocmd filetype crontab setlocal nobackup nowritebackup

"" SYSTEM SETTINGS
set nocompatible
set noswapfile
set relativenumber
set number
set cmdheight=2
set wildmode=longest,list
set colorcolumn=80
set t_Co=256
set backspace=indent,eol,start

"" SPACING SETTINGS
set autoindent
set shiftround
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
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
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>
set pastetoggle=<F12>
nnoremap <F10> :!ctags -R<CR>

"" LEADER MAPPINGS
let mapleader = "_"
map <Leader>_ :noh<return><esc>
nnoremap <Leader>o o<ESC>k
nnoremap <Leader>O O<ESC>j
nnoremap <Leader><space> i<space><esc>
nnoremap <Leader><space> i<space><esc>
nnoremap <Leader><return> i<return><esc>k$
nnoremap <Leader>v :e $MYVIMRC<CR>
nnoremap <silent> <Leader>x :bdelete<CR>
nnoremap <Leader>pp i<p><RETURN></p><ESC>k
nnoremap <Leader>pl ifmt.Println()<ESC>i

"" EXECUTE TESTS WITH LEADER KEY
function! ZeusRSpecFile()
  execute("!clear ; zeus test " . expand("%p"))
endfunction
map <Leader>Z :call ZeusRSpecFile() <CR>
command! ZeusRSpecFile call ZeusRSpecFile()

function! ZeusRSpecCurrent()
  execute("!clear ; zeus test " . expand("%p") . ":" . line("."))
endfunction
map <Leader>z :call ZeusRSpecCurrent() <CR>
command! ZeusRSpecCurrent call ZeusRSpecCurrent()

function! RSpecFile()
  execute("!clear ; bundle exec rspec " . expand("%p"))
endfunction
map <Leader>T :call RSpecFile() <CR>
command! RSpecFile call RSpecFile()

function! RSpecCurrent()
  execute("!clear ; bundle exec rspec " . expand("%p") . ":" . line("."))
endfunction
map <Leader>t :call RSpecCurrent() <CR>
command! RSpecCurrent call RSpecCurrent()



"" PLUGIN SETTINGS
runtime macros/matchit.vim
let g:ctrlp_working_path_mode = 0
noremap <silent> <c-u> :call smooth_scroll#up(20, 25, 1)<CR>20j
noremap <silent> <c-d> :call smooth_scroll#down(20, 25, 1)<CR>20k
noremap <silent> <c-b> :call smooth_scroll#up(40, 25, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(40, 25, 1)<CR>

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
" cd ~/.vim/bundle && git clone git://github.com/tpope/vim-bundler.git
" cd ~/.vim/bundle && git clone git://github.com/kien/ctrlp.vim.git
" cd ~/.vim/bundle && git clone git://github.com/tpope/vim-commentary.git
" cd ~/.vim/bundle && git clone git://github.com/mileszs/ack.vim.git
" cd ~/.vim/bundle && git clone git://github.com/kchmck/vim-coffee-script.git
" cd ~/.vim/bundle && git clone git://github.com/tpope/vim-surround.git
" cd ~/.vim/bundle && git clone git://github.com/terryma/vim-smooth-scroll.git
" cd ~/.vim/bundle && git clone git://github.com/kchmck/vim-coffee-script.git
" cd ~/.vim/bundle && git clone git://github.com/tpope/vim-rails.git
" cd ~/.vim/bundle && git clone git://github.com/bling/vim-bufferline
" cd ~/.vim/bundle && git clone git://github.com/tpope/vim-unimpaired.git
