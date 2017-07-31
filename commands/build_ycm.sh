#!/bin/bash
cd ~/dotfiles/.vim/bundle/YouCompleteMe
if [ "$(uname)" == "Darwin" ]; then
    echo "Build ycm in OS X environment ..."
    ./install.py --clang-completer --gocode-completer --system-libclang --system-boost
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Build ycm in Linux environment ..."
    ./install.py --clang-completer --gocode-completer --system-libclang --system-boost
fi
