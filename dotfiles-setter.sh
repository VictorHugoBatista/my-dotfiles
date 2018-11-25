#!/bin/bash

echo -e "\e[95m"
echo '     dBBBBb  dBBBBP dBBBBBBP    dBBBBP dBP dBP    dBBBP.dBBBBP'
echo '        dBP dBP.BP                                     BP'
echo '   dBP dBP dBP.BP    dBP      dBBBP  dBP dBP    dBBP   `BBBBb'
echo '  dBP dBP dBP.BP    dBP      dBP    dBP dBP    dBP        dBP'
echo -e " dBBBBBP dBBBBP    dBP      dBP    dBP dBBBBP dBBBBP dBBBBP\`\e[0m\e[94m"
echo '  __   ____ ______ ______  ____ ____'
echo ' (( \ ||    | || | | || | ||    || \\'
echo '  \\  ||==    ||     ||   ||==  ||_//'
echo ' \_)) ||___   ||     ||   ||___ || \\'
echo -e "\e[0m"

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

# -----------------------------------------

# Copia os dotfiles para o diretório home
copy_to_home .vimrc ~
copy_to_home .zshrc ~
copy_to_home .tmux.conf ~
copy_to_home .Xresources ~
cd .config/nvim/
copy_to_home init.vim ~/.config/nvim
cd - > /dev/null

exit 0
