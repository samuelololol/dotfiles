#!/bin/bash
git submodule foreach --recursive git clean -fdx
git submodule foreach --recursive git pull origin master
