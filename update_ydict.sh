#!/bin/bash
cd
svn checkout http://ydict.googlecode.com/svn/trunk/ ~/ydict-read-only
cd ~/dotfiles
ln -sf ~/ydict-read-only
