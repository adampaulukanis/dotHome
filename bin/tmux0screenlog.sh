#!/bin/sh

session="dumplogsin2panes"

tmux new-session -d -s $session
tmux send-keys 'tail -f /var/log/daemon' 'C-m'
tmux split-window -h 'tail -f /var/log/messages'
tmux -2 attach-session -t $session
