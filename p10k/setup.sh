#!/bin/bash

echo -n "[o] Do you want to install the p10k config? [y/n] "
read userinput
if [[ $userinput != "y" && $userinout != "Y" ]]; then

        echo "[o] Abort"
        exit
fi 

if ! [[ -d "$HOME/.oh-my-zsh" ]]; then
	echo "[o] Oh my zsh not found. Installing it"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi 




echo "[o] Installing p10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


if [[ $(grep ZSH_THEME=\" $HOME/.zshrc) != 'ZSH_THEME="powerlevel10k/powerlevel10k"' ]]; then
	echo "[o] Setting theme in .zshrc" 
	sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' $HOME/.zshrc > $HOME/.zshrc
fi

echo "[o] Moving p10k config to home folder" 
cp p10k.zsh $HOME/.p10k.zsh

echo "[o] Finished installing p10k."
echo "[o] Please restart your terminal" 







