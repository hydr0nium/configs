
# User uses apt package manager
if hash apt 2> /dev/null
then 
  sudo apt install fd-find ripgrep
  exit
fi

# User uses pacman package manager
if hash pacman 2> /dev/null
then
  sudo pacman -S fd ripgrep
fi
  
