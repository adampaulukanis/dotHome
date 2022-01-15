# $OpenBSD: dot.profile,v 1.5 2018/02/02 02:29:54 yasuoka Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/games
export PATH HOME TERM

alias "git-log"="git log --oneline --graph --decorate --all"
alias ls="ls -F"
alias g="git status"

export DISPLAY=:0
export GIT_EDITOR="vim"
export EDITOR="vim"
export LC_CTYPE="en_US.UTF-8"
# export PS1="\u@\H:\w$ "
export PS1='\[\e[1;91m\][\u@\h \w]\$\[\e[0m\] '
export TERM="xterm-256color"

# enable vi mode
set -o vi
