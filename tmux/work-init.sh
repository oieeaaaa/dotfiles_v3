#!/bin/zsh

SESSIONNAME="work"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ] 
 then
    tmux new-session -s $SESSIONNAME -n "code" -d
    tmux send-keys -t $SESSIONNAME "~/work/Salvage-Networks" C-m 
fi

tmux attach -t $SESSIONNAME
