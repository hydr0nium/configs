# Config / dotfile repo

This repo stores all of my config and dotfiles.

# Dependencies

- All dependencies of the respective tools
- [stow](https://www.gnu.org/software/stow/manual/stow.html) (`sudo pacman -S stow` or `sudo apt install stow`)
- bspwm:
  - polybar
  - feh
  - rofi
  - xrandr
  - sxkhd
  - xautolock (Remember to change the suspend then hibernate time in /etc/systemd/sleep.conf
  - picom
  - setxkbmap
  - pavucontrol-qt
  - btop

# Installation

`git clone https://github.com/hydr0nium/configs.git`

`stow --target=$HOME <package>`

Replace <package> with one or multiple (space seperated) folders in the base repo directory

# Example

To install `tmux` type:

`stow --target=$HOME tmux`

# Issues:

- Tmux is not working:

  Tmux needs to install [tpm](https://github.com/tmux-plugins/tpm) and other plugins. Run `Ctrl-S + I` to install all plugins.
