#!/bin/bash
# choose the sun-jdk as java-vm for gentoo distro

eselect java-vm set user sun-jdk-1.6 
mkdir -p ~/dotfiles/.vim/bundle/LanguageTool
cd ~
cvs -z3 -d:pserver:anonymous@languagetool.cvs.sourceforge.net:/cvsroot/languagetool co -P JLanguageTool 
cd ~/dotfiles/.vim/bundle/LanguageTool
ln -sf ~/JLanguageTool
cd JLanguageTool
ant
#eselect java-vm set user sun-jre-bin-1.6 
