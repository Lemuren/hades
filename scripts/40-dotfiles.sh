#!/usr/bin/env bash
set -euo pipefail

#
# Copy dotfiles.
#

cp dotfiles/.bashrc "${HOME}/.bashrc"
cp dotfiles/.profile "${HOME}/.profile"
cp dotfiles/.xinitrc "${HOME}/.xinitrc"
cp dotfiles/wgetrc "${HOME}/.config/wgetrc"
mkdir "${HOME}/.config/alacritty" && cp dotfiles/alacritty.yml "${HOME}/.config/alacritty/alacritty.yml"
