#!/usr/bin/env bash
set -euo pipefail

# We 'sudo' echo here to have sudo access later when we need it.
sudo echo "Installing HaDeS"

for script in scripts/*.sh; do
    echo "======== ${script} ========"
    if ! bash "${script}"; then
        echo "!! Failed: ${script}" >&2
        exit 1
    fi
done
