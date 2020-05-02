#!/bin/sh

CONFIGS="i3
Xresources
zsh
vim"

OUTPUT=$(rofi -dmenu -p 'config' <<< "$CONFIGS")

case ${OUTPUT%% *} in
	i3)        	urxvt -e $EDITOR $HOME/.config/i3/config 	;;
	Xresources)     urxvt -e $EDITOR $HOME/.Xresources 	;;
	vim)        	urxvt -e $EDITOR $HOME/.vimrc ;;
	zsh)            urxvt -e $EDITOR $HOME/.zshrc        	;;
esac
