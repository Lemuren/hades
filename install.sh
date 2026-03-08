#!/usr/bin/env bash
set -euo pipefail

echo "Cloning HaDeS"
git clone https://github.com/Lemuren/hades.git
cd hades

echo "Installing HaDeS"
for script in scripts/*.sh; do
    echo "======== ${script} ========"
    if ! bash "${script}"; then
        echo "!! Failed: ${script}" >&2
        exit 1
    fi
done
