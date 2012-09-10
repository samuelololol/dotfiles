#!/bin/bash
cd ~/dotfiles/.vim/bundle/
modules=(
auto-pairs
crefvim
doxygentoolkit
matchit
neocomplcache
neocomplcache-snippets-complete
nerdtree
sudo
surround
tagbar
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
