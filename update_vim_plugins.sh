#!/bin/bash

git submodule update --init
for mod in crefvim nerdtree pydiction snipmate supertab gist-vim; do
   cd $mod
   echo
   echo
   echo "........"
   echo "module: $mod"
   echo "........"
   
   git pull origin master
   cd ..
   git add $mod
done

# add submodule

# git submodule add <FULL GIT REPO PATH> <local folder name>
# git submodule update --init
