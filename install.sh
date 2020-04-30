#!/bin/sh

set -e

for F in *
do
  case $F in
    "install.sh")
      # I do not need this file
      ;;
    *)
      echo "$F"
      ln -s "$F" "$HOME/.$F"
      ;;
  esac
done
