#!/bin/ksh

set -e

# .profile
if [[ -e $HOME/.profile ]]
then
    mv $HOME/.profile $HOME/.profile.old
fi
ln -sf $HOME/dotHome/profile $HOME/.profile

# X
ln -sf $HOME/dotHome/Xdefaults $HOME/.Xdefaults
ln -sf $HOME/dotHome/Xresources $HOME/.Xresources
ln -sf $HOME/dotHome/xsession $HOME/.xsession

# npm
mkdir $HOME/.npm-global
echo "$HOME/.npm-global" >> $HOME/.npmrc

# i3
ln -sf $HOME/dotHome/i3/i3status.conf $HOME/.i3status.conf
mkdir -p $HOME/.config/i3
ln -sf $HOME/dotHome/i3/config $HOME/.config/i3/config

# (neo)vim
ln -sf $HOME/dotHome/vim $HOME/.vim
ln -sf $HOME/.vim/vimrc $HOME/.vimrc
mkdir -p $HOME/.config/nvim
ln -sf $HOME/dotHome/nvim/init.vim $HOME/.config/nvim/init.vim

# tmux
ln -sf $HOME/dotHome/tmux.conf $HOME/.tmux.conf

# git
ln -sf $HOME/dotHome/gitconfig $HOME/.gitconfig

# my bin programs
ln -sf $HOME/dotHome/bin $HOME/bin
