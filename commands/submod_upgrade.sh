#!/bin/bash
cd ~/dotfiles/.zsh
echo "oh-my-zsh"
git fetch
git pull origin master
cd ..
git add .zsh
cd ~/dotfiles/.vim/bundle/
modules=(
auto-pairs
crefvim
ctrlp.vim
doxygentoolkit
matchit
nerdtree
surround
tagbar
tasklist
valgrind
vim-easymotion
vim-pathogen
)
for mod in ${modules[@]}; do
   cd $mod
   echo "........"
   echo "module: $mod"
   git fetch
   git pull origin master
   cd ..
   git add $mod
done
cd YouCompleteMe
echo "module: YouCompleteMe"
git clean -fdx
git fetch
git pull origin master
cd ..
git add YouCompleteMe
cd ../..
