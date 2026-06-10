# $Debian: .bashrc 20260607 wandsas $

[[ $- != *i* ]] && return   # don't do anything, if not interactively!

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTFILESIZE=1000
HISTSIZE=1000
HISTFILE=1000
HISTFILE=$HOME/.cache/bash_history

# check window size after each command and optional update LINES & COLUMNS.
shopt -s checkwinsize

LESS="-R -M"
LESSHISTFILE=$HOME/.cache/less_history
LESSOPEN=""

# Terminal's title
PS1='\[\033]0;\u@\h:\w\007'
# Root prompt
if [ -f /usr/local/bin/git-prompt.sh ]; then
  . /usr/local/bin/git-prompt.sh
  PS1+='\[\e[01;31m\]\h\[\e[00m\]$(__git_ps1 " (%s)") \[\e[01;34m\]\W \$\[\e[00m\] '
else
  PS1='\h \W \$ '
fi

if [ -d ~/.bashrc.d ]; then
  for sh in ~/.bashrc.d/*.sh; do
    [ -r $sh ] && . $sh
  done
  unset sh
fi

[ -f ~/.aliases.sh ] && . ~/.aliases.sh
