#!/usr/bin/env bash

# Exit if any command fails, unset variable is used, or pipeline returns non-zero status
set -euo pipefail

bemenu-run -i -w -H 30 --ch 20 --cw 1 --hp 10 --tb '#285577' --tf '#eeeeee' --nf '#bbbbbb' --hb '#285577' --hf '#eeeeee' | exec --
