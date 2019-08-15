# $OpenBSD: dot.profile,v 1.5 2018/02/02 02:29:54 yasuoka Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM

alias "git-log"="git log --oneline --graph --decorate --all"
alias ls="ls -F"

export DISPLAY=:0
export GIT_EDITOR="vim"
export LC_CTYPE="en_US.UTF-8"
export PS1="\u@\H:\w$ "
export TERM="screen-256color"
