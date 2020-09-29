# List directory contents
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

alias ls='exa -F'
alias l='exa -F'
alias ll='exa -lahF --git --git-ignore'
alias lll='exa -baghHliSF@ --git --git-ignore'

alias v='nvim'
alias vi='nvim'
alias vim='nvim'

function gitclean() {
  git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}'
}

function gitcleanwithdelete() {
  git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
}

# alias gitclean='git branch -r | awk '"'"'{print $1}'"'"' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '"'"'{print $1}'"'"

alias lg='lazygit'
alias glgl="git log --decorate --oneline --graph --boundary"
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg_long="git log --date-order --all --stat --graph --pretty=format:'%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'"
alias glg_topo='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg_long_top0="git log --date-order --all --stat --graph --pretty=format:'%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'"
alias gd='git diff | cat'
alias gdc='git diff --cached | cat'
alias gdh='git diff HEAD | cat'
alias gs='git status --show-stash -b'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gfcr='git clone --recurse-submodules'
alias gfm='git pull'
alias gfr='git pull --rebase'

alias gs='git stash'
alias cll='colorls -la --report --gs'
alias cat='bat'
alias mux='tmuxinator'
alias copy="tr -d '\n' | pbcopy"
alias o="open"
alias run="open -a 'Google Chrome Canary' --args --disable-web-security --user-data-dir='/Users/gupta/Desktop/nosecurity'"
alias nodevm='source "$HOME/.nvm/nvm.sh"'
# git log --date=iso --pretty=format:'%ad %H %s' | awk '$0 >= "2018-05-10" && $0 <= "2018-12-31"'
