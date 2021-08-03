" Auto load / install plugin manager

if !1 | finish | endif

" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    echo "Installing VimPlug..."
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

" VimPlug 
call plug#begin('~/.vim/plugged')

" Theme VIM
Plug 'drewtempelmeyer/palenight.vim'

" Rainbow Brackets
Plug 'luochen1990/rainbow'

" VIMPROC 
Plug 'Shougo/vimproc', { 'do': 'make' }

" Syntastic  
" https://github.com/scrooloose/syntastic
Plug 'scrooloose/syntastic'

" Fugitive
" fugitive.vim: a Git wrapper so awesome, it should be illegal
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Surround
" surround.vim: quoting/parenthesizing made simple
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

call plug#end()
" Required:
filetype plugin indent on

" Theme PALENIGHT 
set background=dark
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


set autoindent
syntax on
set mouse=a
set number
set tabstop=4 shiftwidth=4

" Rainbow Brackets
let g:rainbow_active = 1
