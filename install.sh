#!/bin/sh

set -e

OLDPWD=`pwd`
WHITELIST="UTF-8-demo.txt emoji-test.txt Xdefaults Xresources gitconfig profile tmux.conf vimrc vim xsession ctags npmrc"

kaszana sie dzieje, gdy plik juz istnieje, bo nie jest linkowany. Np. .profile istnieje i co wtedy?
moze niech robi kopie takiego pliku (w jakims ~/backup folderze) [mv file] i wtedy zadziala?

# gf good-file
for gf in $WHITELIST
do
    #ln -s "$MYPATH$gf" "$HOME/.${gf##*/}"
    ln -s $gf "$HOME/.${gf##*/}"
done

# NPM
mkdir "${HOME}/.npm-global"

# i3 files
