#!/bin/bash

echo -n "[o] Do you want to install the alacritty config? [y/n] "
read userinput
if [[ $userinput != "y" && $userinout != "Y" ]]; then

        echo "[o] Abord"
        exit
fi

echo "[o] Installing zsh shell"

if hash apt 2> /dev/null
        echo "[o] Detected apt package manager"
        sudo apt install zsh curl

fi

if hash pacman 2> /dev/null
        echo "[o] Detected pacman package manager"
        sudo pacman -S zsh curl

fi


if ! [[ -d "$HOME/.oh-my-zsh" ]]; then
        echo "[o] Oh my zsh not found. Installing it"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi 



echo "[o] Copying custom .zshrc into home folder" 
cp .zshrc "HOME/.zshrc

echo "[o] Installing zsh plugins" 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "[o] Finished installing custom zsh config"

