#!/bin/bash

echo -n "[o] Running setup for tmux. Are you sure you want to intall tmux and setup it up? [y/n] "
read userinput
if [[ $userinput != "y" && $userinput != "Y" ]]; then
	echo "[o] Aborting" 
	exit
fi 

exit

if ! [[ -d "$HOME/.config" ]]; then
	echo "[o] Config folder not found. Creating it"
	mkdir $HOME/.config
fi 

if ! [[ -d "$HOME/.config/tmux" ]]; then
	echo "[o] tmux config folder not found. Creating it"
fi 

echo "[o] Installing tmux package manager"
if hash apt 2> /dev/null; then
	echo "[o] Detected apt package manager" 
	sudo apt install tmux git
fi 
	

if hash pacman 2> /dev/null; then
	echo [o] Detected pacman package manager"
	sudo pacman -S tmux git
fi 


echo "[o] Installing tmux package manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "[o] Moving config file into .config/tmux/
mv ./tmux.conf $HOME/.config/tmux/

echo "[o] Finished installing tmux"
