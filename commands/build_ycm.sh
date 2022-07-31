#!/bin/bash
cd ~/dotfiles/.vim/pack/original/start/YouCompleteMe
if [ "$(uname)" == "Darwin" ]; then
    echo "Build ycm in OS X environment ..."
    #./install.py --clang-completer --gocode-completer --system-libclang --system-boost

    ##env
    #PATH="/usr/local/opt/llvm/bin:$PATH" \
    #LDFLAGS="-L/usr/local/opt/llvm/lib" \
    #CPPFLAGS="-I/usr/local/opt/llvm/include" \
    python3 ./install.py --clang-completer #--system-boost

elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Build ycm in Linux environment ..."
    ./install.py --clang-completer --gocode-completer --system-libclang --system-boost
fi
