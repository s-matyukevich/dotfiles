### How to install 
```
git clone --recursive https://github.com/s-matyukevich/dotfiles.git ~/.vim-sm

ln -s ~/.vim-sm/.vim ~/.vim
ln -s ~/.vim-sm/.vimrc ~/.vimrc

rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
vim +GoInstallBinaries
```