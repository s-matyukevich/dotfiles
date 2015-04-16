set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'kana/vim-textobj-user'
Plugin 'bkad/CamelCaseMotion'
Plugin 'kien/ctrlp.vim'

Plugin 'fatih/vim-go'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'nelstrom/vim-textobj-rubyblock' 


call vundle#end()            
filetype plugin indent on    
set wrapscan
syntax on
set number
let mapleader = ";"
"set spell

runtime macros/matchit.vim

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

map <F3> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
map <F4> :execute "grep! -rwF '" . expand("<cword>") . "' ." <Bar> cw<CR>
map <c-l> :ccl<CR>
nmap <c-j> o<Esc>

