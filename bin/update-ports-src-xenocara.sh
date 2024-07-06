#!/bin/sh

set -e

OLDPATH=$(pwd)

LISTA="ports src xenocara"

for i in $LISTA
do
    echo "------------------------ $i ------------------------------"
    cd "/usr/$i"
    cvs -q up -Pd -A
    cd /usr
done

cd $OLDPATH
