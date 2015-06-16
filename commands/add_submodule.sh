#!/bin/bash

git submodule add -f $1 $2
git submodule update --init  
cd $2
git pull origin master  
cd $OLDPWD
git commit -m'add a new submodule'  
