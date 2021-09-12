#!/bin/sh

#set -e

for F in ~/dotHome/*
do
  echo "$F"
  ln -s "$F" "$HOME/.${F##*/}"
done
