# -*- mode: sh -*-

alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

alias ls='ls -GIF'
alias ll='ls -lh'
alias la='ls -A'
alias  l='ls -lhA'
alias df='df -h'
alias free='free -h'

# git
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias grhh='git reset HEAD --hard'
alias gr='git remote -v'
alias gst='git status'
alias gcd='cd $(git rev-parse --show-toplevel)'

alias h='fc -l'
alias j='jobs'
alias m='$PAGER'
alias cls='clear'
