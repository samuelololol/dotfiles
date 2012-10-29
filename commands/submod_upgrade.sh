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
doxygentoolkit
matchit
neocomplcache
nerdtree
sudo
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
cd ../..
