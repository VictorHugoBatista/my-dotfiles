# my-dotfiles

![screenshot](https://github.com/VictorHugoBatista/my-dotfiles/blob/master/screenshot.png)

## Instalar
* Urxvt (https://wiki.archlinux.org/index.php/rxvt-unicode#Installation)
* Oh My ZSH (https://github.com/robbyrussell/oh-my-zsh)
* Tmux (sudo apt install tmux)
* NVM (https://github.com/creationix/nvm)
* Vim (sudo apt install vim)
* Nvim (sudo apt install neovim)
* TPM (https://github.com/tmux-plugins/tpm)
* Vim-plug (https://github.com/junegunn/vim-plug)
* Fonts powerline (https://github.com/powerline/powerline)

## Instalar dependências do TPM e do Vim-plug
 * TPM : *prefixo + I*
 * Vim-plug: *:PlugInstall*

## Aliases
```console
alias list="ls -la --color=none"
alias dockerc="docker-compose"
alias dockerstop="docker stop $(docker ps -q)" # ???
alias nv="nvim"
alias yarnb="yarn run build"
alias yarns="yarn run start"
alias yarnw="yarn run build && yarn run start"
alias gulpb="gulp build"
alias gulpw="gulp watch"
alias gulpall="gulp sprite && gulp build"
alias gruntb="grunt build"
alias gruntw="grunt watch"
```

