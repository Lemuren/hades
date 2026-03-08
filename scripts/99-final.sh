#!/usr/bin/env bash
set -euo pipefail

# 
# Post-install cleanup.
#

echo "==> Cleaning up package cache"
sudo apt autoremove -y
sudo apt clean

echo "==> Removing bootstrap script and cloned files"
rm "${HOME}/bootstrap.sh"
rm -rf "${HOME}/hades"
rm -f "${HOME}/.wget-hsts"

echo "== HaDeS installation successful! =="
echo "To finalize the installation add your SSH key, configure git and reboot the machine"
