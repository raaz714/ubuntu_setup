
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()            " required
filetype plugin indent on    " required

" General settings (my customization)
se ts=3
se sw=3
se expandtab
se smartindent
se laststatus=2
se number

syntax enable
colorscheme monokai
se hlsearch

if exists('+colorcolumn')
   let &colorcolumn=join(range(81,999),",")
endif

" Plugin settings (static)
let g:airline_theme='molokai'

" Shortcuts key binding
nmap <F2> :echo strftime('%c')<CR>
nmap <F3> :StripWhitespace<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
