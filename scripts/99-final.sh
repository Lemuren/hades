#!/usr/bin/env bash
set -euo pipefail

# 
# Post-install cleanup.
#

echo "==> Cleaning up package cache"
sudo apt autoremove -y
sudo apt clean

echo "== HaDeS installation successful! =="
echo "To finalize the installation add your SSH key, configure git and reboot the machine"
