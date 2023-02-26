#!/bin/sh

focus_src="$(bspc query -D -d '^1:focused')" || exit 1
focus_dst="$(bspc query -D -d '^2:focused')" || exit 1

name_src="$(bspc query -D -d '^1:focused' --names)" || exit 1
name_dst="$(bspc query -D -d '^2:focused' --names)" || exit 1

bspc desktop $focus_dst -n "$name_dst" -s $focus_src
bspc desktop $focus_dst -n "$name_src"
