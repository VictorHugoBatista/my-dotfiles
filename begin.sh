#!/bin/bash

if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.old
fi
cp .vimrc ~

