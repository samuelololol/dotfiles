#!/bin/bash

git submodule update --init
for mod in crefvim pydiction snipmate supertab; do
   cd $mod
   echo "........"
   echo "module: $mod"
   echo "........"
   
   git pull origin master
   cd ..
   git add $mod
done
