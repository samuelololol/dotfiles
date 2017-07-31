#!/bin/bash
git submodule update --init --recursive --force
git submodule foreach --recursive git clean -fdx
git submodule foreach git pull origin HEAD
