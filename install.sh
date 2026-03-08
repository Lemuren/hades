#!/usr/bin/env bash
set -euo pipefail

echo "Installing HaDeS"
for script in scripts/*.sh; do
    echo "======== ${script} ========"
    if ! bash "${script}"; then
        echo "!! Failed: ${script}" >&2
        exit 1
    fi
done
