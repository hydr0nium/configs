#!/bin/bash

echo -n "[o] Do you want to install the alacritty config? [y/n] "
read userinput
if [[ $userinput != "y" && $userinout != "Y" ]]; then

        echo "[o] Abord"
        exit
fi 

if ! [[ -d "$HOME/.oh-my-zsh" ]]; then
	echo "[o] Oh my zsh not found. Installing it"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi 




echo "[o] Installing p10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "[o] Moving p10k config to home folder" 
cp p10k.zsh $HOME/.p10k.zsh

if [[ "$ZSH_THEME" != "powerlevel10k/powerlevel10k"]]; then
	echo "ZSH_THEME env variable not found exporting it into .zshrc" 
	echo 'export ZSH_THEME="powerlevel10k/powerlevel10k"' >> $HOME/.zshrc
fi 

echo "Finished installing p10k" 







