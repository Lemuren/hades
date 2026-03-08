#!/usr/bin/env bash
set -euo pipefail

sudo apt install -y git
git clone https://github.com/Lemuren/hades.git
cd hades
bash "install.sh"
