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
alias nv="nvim"
alias yarnb="yarn run build"
alias gulpb="gulp build"
alias gulpall="gulp sprite && gulp build"
alias gruntb="grunt build"
alias wp="docker-compose run --rm wp-cli"

listl() {
    ls -la $1 | less
}

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

