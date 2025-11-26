#!/usr/bin/env bash

# Exit if any command fails, unset variable is used, or pipeline returns non-zero status
set -euo pipefail

cliphist list | $MENU | cliphist decode | wl-copy
