#!/bin/sh

set -e

sh -c '
pkg_delete -a
pkg_add -uUI -D snap
sysupgrade -s -n
'

# Build tags for C lang to be used in Vim. /usr/include contains only H files.
ectags --c-kinds=+cdefglmnpstuvx -f /home/adam/.vim/systags /usr/include/*.h
