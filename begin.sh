#!/bin/bash

# Copia um arquivo para outro diretório.
# Se o arquivo já existir, cria um backup.
# @param $1 Arquivo à copiar
# @param $2 Diretório destino
copy_to_home () {
    if [ -e "$2/$1" ]; then
        mv "$2/$1" "$2/$1.old"
    fi
    cp -a $1 $2
}

copy_to_home .vimrc ~
copy_to_home .zshrc ~
copy_to_home .tmux.conf ~
cd .config/nvim/
copy_to_home init.vim ~/.config/nvim
cd - > /dev/null

