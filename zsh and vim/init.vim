
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
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'

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
se hlsearch
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
"set t_Co=256

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
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
endif


"set background=dark " for the dark version
"set background=light " for the light version
let g:onedark_terminal_italics=1
colorscheme onedark


"if exists('+colorcolumn')
"   let &colorcolumn=join(range(81,999),",")
"endif

" air-line
let g:airline_powerline_fonts = 1

"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

" Plugin settings (static)
"let g:airline_theme='one'

" Shortcuts key binding
nmap <F2> :echo strftime('%c')<CR>
nmap <F3> :StripWhitespace<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
