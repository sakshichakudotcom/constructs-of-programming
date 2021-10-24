#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "dog sounds" ${sounds[dog]}

echo "Animal sounds" ${sounds[@]}

echo "Animal sounds" ${!sounds[@]}


