#!/usr/bin/env bash
set -euo pipefail

#
# Enable various system services.
#

echo "==> Enabling and configuring system services"
sudo systemctl enable --now docker
