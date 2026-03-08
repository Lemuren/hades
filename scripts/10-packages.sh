#!/usr/bin/env bash
set -euo pipefail

#
# Here we list all the (non-developer) packages we want to install.
#

echo "==> Installing basic packages"
sudo apt install -y      \
    git                  \
    curl                 \
    build-essential      \
    python-is-python3    \
    htop                 \
    neovim               \
    x11-xkb-utils        \
    suckless-tools       \
    unzip                \
    ca-certificates      \
    gnupg                \
    zip                  \
    xz-utils             \
    tree
