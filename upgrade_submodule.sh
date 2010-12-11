#!/bin/bash
for mod in crefvim nerdtree pydiction snipmate supertab gist-vim valgrind gtk-vim-syntax surround; do
   cd $mod
   echo
   echo
   echo "........"
   echo "module: $mod"
   echo "........"
   git fetch
   git pull origin master
   cd ..
   git add $mod
done
