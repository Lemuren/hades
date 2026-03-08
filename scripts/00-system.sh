#!/usr/bin/env bash
set -euo pipefail

# 
# This part of the install script is responsible for updating the system,
# setting up the home directory, and installing some basic packages.
#

# Make sure the system is up-to-date before we do anything else.
echo "==> Updating system"
sudo apt update
sudo apt upgrade -y

# We're going to clobber these later anyway.
rm "${HOME}/.bash_logout"
rm "${HOME}/.bashrc"
rm "${HOME}/.profile"

# Set up our home directory.
echo "==> Creating HOME directory layout"
mkdir -p "${HOME}/docs"
mkdir -p "${HOME}/repos"
mkdir -p "${HOME}/downloads"
mkdir -p "${HOME}/pictures"
mkdir -p "${HOME}/.local/bin"
