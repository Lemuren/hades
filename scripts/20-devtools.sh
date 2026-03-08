#!/usr/bin/env bash
set -euo pipefail

#
# Here we list development libraries, programming languages, and other dev tools.
#

# First all the normal developer tools and languages.
echo "==> Installing developer tools"
sudo apt install -y  \
    make             \
    gcc              \
    g++              \
    pkg-config       \
    python3          \
    python3-pip      \
    python3-venv     \
    golang

# Next Docker, which is a bit more involved.
echo "==> Installing Docker"
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install -y            \
    docker-ce             \
    docker-ce-cli         \
    containerd.io         \
    docker-buildx-plugin  \
    docker-compose-plugin

sudo usermod -aG docker "${USER}"
