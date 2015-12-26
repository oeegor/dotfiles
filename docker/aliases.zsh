
dexec() {
    docker exec -it "$*"
}

debash() {
    docker exec -it "$*" bash
}

alias dcu="docker-compose up"
alias dcb="docker-compose build"
alias dcs="docker-compose stop"
alias dcp="docker-compose ps"
