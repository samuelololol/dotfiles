#!/bin/bash
cd ~/dotfiles/.vim/bundle/
for mod in crefvim nerdtree matchit neocomplcache surround valgrind vim-pathogen; do
   cd $mod
   echo "........"
   echo "module: $mod"
   git fetch
   git pull origin master
   cd ..
   git add $mod
done
cd ../..
