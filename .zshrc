# --------------------------------------------------
# Configuração principal
# --------------------------------------------------
export ZSH=~/.oh-my-zsh
ZSH_THEME="bureau"
plugins=(
    git
    asdf
)
source $ZSH/oh-my-zsh.sh

# --------------------------------------------------
# Aliases
# --------------------------------------------------

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
# Aliases do Git
# --------------------------------------------------
# git st -> git status -s
git config --global alias.st "status -s"

# --------------------------------------------------
# Ajusta as cores do terminal
# --------------------------------------------------
export TERM=xterm-256color

# --------------------------------------------------
# Carrega o tmux automaticamente
# --------------------------------------------------
if [ ! $TMUX ]; then
    tmux attach -t base || tmux new -s base
fi

# --------------------------------------------------
# Ajusta as cores do terminal
# --------------------------------------------------
ssh-add ~/.ssh/github

# --------------------------------------------------
# Carrega o ASDF automaticamente
# --------------------------------------------------
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit
