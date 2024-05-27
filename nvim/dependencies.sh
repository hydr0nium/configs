curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# User uses apt package manager
if hash apt 2> /dev/null
then 
  sudo apt install fd-find ripgrep npm unzip cmake pkg-config
  sudo n lts
  sudo n latest
  hash -r
  exit
fi

# User uses pacman package manager
if hash pacman 2> /dev/null
then
  sudo pacman -S fd ripgrep npm nodejs unzip cmake 
  sudo n lts
  sudo n latest
  hash -r
  exit
fi


