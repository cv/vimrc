set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'wincent/Command-T'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-afterimage'
Bundle 'rstacruz/sparkup'
Bundle 'bbommarito/vim-slim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tsaleh/vim-align'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'rodjek/vim-puppet'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  macmenu &File.Open\ Tab\.\.\. key=<nop>
  map <D-t> :CommandT<CR>
  map <D-T> :CommandTBuffer<CR>
  set guifont=Menlo:h16
endif
nnoremap <silent> <D-t> :CommandT<CR>
nnoremap <silent> <D-T> :CommandTBuffer<CR>

nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-

syntax enable
set background=dark
colorscheme solarized

set hidden
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab
set ruler
set number
set nowrap
set encoding=utf8
set fileencoding=utf8
set smartcase
set hlsearch
set cursorline
set laststatus=2
set showcmd
set showmode
set noerrorbells
set nowrap
set novisualbell
set backspace=indent,eol,start
set autowriteall
set completeopt=menu,preview
set autoread
set autowrite
set backupdir=$TMPDIR
set showfulltag
set smarttab
set shiftround
set guioptions-=T
set relativenumber
set undofile
set undodir=$TMPDIR
set gdefault
set incsearch
set showmatch
set hlsearch
set wildignore+=*.o,*.obj,.git,tmp/**,build/**,coverage/**

" Fix regexes in search
nnoremap / /\v
vnoremap / /\v

" Delete trailing white space when saving
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

au BufRead,BufNew *.coffee set ft=coffee
au BufRead,BufNew *.html.erb set ft=eruby.html
au BufRead,BufNew Vagrantfile set ft=ruby
au BufRead,BufNew Gemfile set ft=ruby
au BufRead,BufNew Guardfile set ft=ruby
au BufRead,BufNew Procfile set ft=ruby

au FocusLost * :wa
au FocusLost * :CommandTFlush
au BufWrite * :call DeleteTrailingWS()
