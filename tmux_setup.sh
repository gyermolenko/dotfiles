#!/bin/bash

tmux -2 new-session -d -s session_name

tmux new-window -t session_name:1 -n 'run_server'
tmux send-keys "cd nan" C-m
tmux new-window -t session_name:2 -n 'vim'
tmux send-keys "cd nan" C-m
tmux new-window -t session_name:3 -n 'etc'

tmux select-window -t session_name:1
tmux -2 attach-session -t session_name
