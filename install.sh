#!/bin/sh

set -e

for F in ~/dotHOME/*
do
  echo "$F"
  ln -s "$F" "$HOME/.${F##*/}"
done
