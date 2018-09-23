" Set non compatible
set nocompatible

" Vundle setup
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Syntastic
Plugin 'scrooloose/syntastic'

" Tmux-navigator
Plugin 'christoomey/vim-tmux-navigator'

" Syntax
Plugin 'leafgarland/typescript-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'udalov/kotlin-vim'
Plugin 'fatih/vim-go'

call vundle#end()

filetype plugin indent on

" General settings
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

syntax on

" vim-airline settings
set laststatus=2
" Show Paste if in paste mode
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extension#tabline#enabled=1
" Set theme
let g:airline_theme="papercolor"

" NERDTree settings
" Make NERDTree always open if no file selected
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close NERDTree when close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic settings
let g:syntastic_error_symbol="✘"
let g:syntastic_warning_symbol="▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode="passive"
augroup END

