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

#{NPM
mkdir "${HOME}/.npm-global"
#}

#{i3 files
ln -s $HOME/dotHome/i3/i3status.conf $HOME/.i3status.conf

mkdir -p /home/adam/.config/i3/
ln -s /home/adam/dotHome/i3/config /home/adam/.config/i3/config
#}
