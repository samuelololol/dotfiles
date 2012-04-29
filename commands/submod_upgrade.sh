#!/bin/bash
cd ~/dotfiles/.vim/bundle/
for mod in crefvim matchit neocomplcache neocomplcache-snippets-complete nerdtree surround valgrind vim-easymotion vim-pathogen; do
   cd $mod
   echo "........"
   echo "module: $mod"
   git fetch
   git pull origin master
   cd ..
   git add $mod
done
cd ../..



