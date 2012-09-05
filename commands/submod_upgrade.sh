#!/bin/bash
cd ~/dotfiles/.vim/bundle/
modules=(
auto-pairs
crefvim
matchit
neocomplcache
neocomplcache-snippets-complete
nerdtree
srcexpl
sudo
surround
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
