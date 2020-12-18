# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias ga='git add'
alias gaa='git add --all'
alias gma='git commit -am'
alias gmab=gma
alias gl='git pull'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin'
alias gd='git diff'
alias gc='git commit'
alias gcm='git checkout master'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gbn='git copy-branch-name'
alias gbr='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias groot='cd "$(git rev-parse --show-toplevel)"'  # go to the root of the project
alias ggrep='git grep'
