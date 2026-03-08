#!/usr/bin/env bash
set -euo pipefail

#
# Copy dotfiles.
#

cp dotfiles/.bashrc "${HOME}/.bashrc"
cp dotfiles/.profile "${HOME}/.bashrc"
cp dotfiles/.xinitrc "${HOME}/.xinitrc"
