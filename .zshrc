# --------------------------------------------------
# Configuração principal
# --------------------------------------------------
export ZSH=~/.oh-my-zsh
ZSH_THEME="refined"
plugins=(
    git
)
source $ZSH/oh-my-zsh.sh

# --------------------------------------------------
# Aliases
# --------------------------------------------------
# Neovim
alias nv="nvim"
alias snv="sudo nvim"

# Tarefas de build
alias yarnb="yarn build"
alias yarnd="yarn dev"
alias yarns="yarn start"
alias yarna="yarn android"
alias yarnar="yarn android:reactotron"

# Docker
alias dc="docker-compose"

# Portas
alias list-ports="sudo lsof -i -P -n | grep LISTEN"

# Listagens de arquivos/diretórios
alias list="ls -la --color=none"
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

