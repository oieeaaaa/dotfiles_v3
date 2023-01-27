#!/bin/zsh

PROJECTS=("~/work/Salvage-Networks" "~/work/fi-spa-gen2")
SESSIONNAME="~/work/Salvage-Networks"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ] 
 then
    for session in "${PROJECTS[@]}"; do
      tmux new-session -s $session -n "code" -d
      tmux send-keys -t $session $session C-m 
      clear;
    done
fi

tmux attach -t $SESSIONNAME
clear;
