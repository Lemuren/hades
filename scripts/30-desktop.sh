#!/usr/bin/env bash
set -euo pipefail

#
# Install our Window Manager and configure it to AutoStart.
# We don't customize it yet, that's part of 40-dotfiles.sh.
# This is also where we include "graphical" applications.
#

echo "==> Installing Xorg and AwesomeWM"
sudo apt install -y  \
    xorg             \
    awesome          \
    xinit            \
    x11-xserver-utils

echo "==> Installing fonts"
sudo apt install -y  \
    fonts-noto-core  \
    fonts-noto-mono

echo "==> Installing graphical packages"
sudo apt install -y      \
    mpv                  \
    firefox-esr          \
    feh                  \
    xclip                \
    scrot
