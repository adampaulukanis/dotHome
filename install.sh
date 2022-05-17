#!/bin/sh

set -e

OLDPWD=`pwd`
MYPATH="$HOME/dotHome/"
WHITELIST="UTF-8-demo.txt emoji-test.txt Xdefaults Xresources gitconfig profile tmux.conf vimrc vim xsession"

cd $MYPATH

# gf good-file
for gf in $WHITELIST
do
    ln -s "$MYPATH$gf" "$HOME/.${gf##*/}"
done

cd $OLDPWD
