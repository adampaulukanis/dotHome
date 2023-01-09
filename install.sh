#!/bin/sh

#set -e

OLDPWD=`pwd`
MYPATH="$HOME/dotHome/"
WHITELIST="UTF-8-demo.txt emoji-test.txt Xdefaults Xresources gitconfig profile tmux.conf vimrc vim xsession ctags npmrc"

kaszana sie dzieje, gdy plik juz istnieje, bo nie jest linkowany. Np. .profile istnieje i co wtedy?
moze niech robi kopie takiego pliku (w jakims ~/backup folderze) [mv file] i wtedy zadziala?

cd $MYPATH

# gf good-file
for gf in $WHITELIST
do
    ln -s "$MYPATH$gf" "$HOME/.${gf##*/}"
done

cd $OLDPWD

# NPM
mkdir "${HOME}/.npm-global"
