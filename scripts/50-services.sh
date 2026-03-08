#!/usr/bin/env bash
set -euo pipefail

#
# Enable various system services.
#

echo "==> Enabling and configuring system services"
systemctl enable --now docker
