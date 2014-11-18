set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'rjohnsondev/vim-compiler-go'
Plugin 'dgryski/vim-godef'
Plugin 'vim-jp/vim-go-extra'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

Plugin 'scrooloose/nerdtree'

call vundle#end()            
filetype plugin indent on    
set wrapscan
syntax on
set number
"set spell

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

map <F3> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
map <F4> :execute "grep! -rF '" . expand("<cword>") . "' ." <Bar> cw<CR>
map <c-p> :ccl<CR>

