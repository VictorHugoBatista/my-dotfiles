# --------------------------------------------------
# Configuração principal
# --------------------------------------------------
export ZSH=~/.oh-my-zsh
ZSH_THEME="nanotech"
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
alias yarnb="yarn run build"
alias yarnd="yarn run dev"
alias gulpb="gulp build"
alias gulpall="gulp sprite && gulp build"
alias gruntb="grunt build"

# Docker
alias dockerc="docker-compose"
alias wp="docker-compose run --rm wp-cli"

# Elixir no docker
run_docker_elixir() {
    docker run -it --rm --name elixir-inst1 -v "$PWD":/usr/src/myapp -w /usr/src/myapp elixir "$@"
}
run_elixir() {
    run_docker_elixir elixir "$@"
}
run_mix() {
    run_docker_elixir mix "$@"
}

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

