#!/bin/bash


echo -n "[o] Do you want to install the alacritty config? [y/n] "
read userinput
if [[ $userinput != "y" && $userinout != "Y" ]]; then

	echo "[o] Abord" 
	exit
fi 

if ! [[ -d "$HOME/.config" ]]; then
        echo "[o] Config folder not found. Creating it"
        mkdir $HOME/.config
fi


if ! [[ -d "$HOME/.config/alacritty" ]]; then
        echo "[o] alacritty config folder not found. Creating it"
				mkdir $HOME/.config/alacritty
fi

echo "[o] Installing alacritty terminal" 

if hash apt 2> /dev/null; then
	echo "[o] Detected apt package manager"
	sudo apt install alacritty curl

fi 

if hash pacman 2> /dev/null; then
	echo "[o] Detected pacman package manager"
	sudo pacman -S alacritty curl

fi



if ! [[ -d "$HOME/.local/share/fonts/" ]]; then

	echo "[o] Font folder not found. Creating it"
	mkdir $HOME/.local/share/fonts/
fi 

if ! [[ -f "$HOME/.local/share/fonts/MesloLGS NF Regular.ttf" ]]; then
	echo "[o] Downloading nerdfonts"
	curl -LO --output-dir $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
	curl -LO --output-dir $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
	curl -LO --output-dir $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
	curl -LO --output-dir $HOME/.local/share/fonts https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
	echo "[o] Reloading font cache"
	fc-cache -f
fi 


echo "[o] Installing catppuccin theme for alacritty"
curl -LO --output-dir ~/.config/alacritty https://github.com/catppuccin/alacritty/raw/main/catppuccin-mocha.toml

echo "[o] Moving config file into .config/alacritty
mv ./alacritty.toml $HOME/.config/alacritty

echo "[o] Finished installing alacritty"





