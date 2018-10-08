# --------------------------------------------------
# Configuração principal
# --------------------------------------------------
export ZSH=~/.oh-my-zsh
ZSH_THEME="avit"
plugins=(
    git
)
source $ZSH/oh-my-zsh.sh

# --------------------------------------------------
# Aliases
# --------------------------------------------------
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

# --------------------------------------------------
# Ajusta as cores do terminal
# --------------------------------------------------
export TERM=xterm-256color

# --------------------------------------------------
# Carrega programas externos
# --------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

if [ ! $TMUX ]; then
    tmux attach -t base || tmux new -s base
fi

