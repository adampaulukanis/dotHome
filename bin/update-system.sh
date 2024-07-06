#!/bin/sh

set -e

sh -c '
pkg_delete -a
pkg_add -uUI -D snap
sysupgrade -s -n
'
