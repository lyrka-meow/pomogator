#!/usr/bin/env bash
set -euo pipefail

repo="https://raw.githubusercontent.com/lyrka-meow/pomogator/refs/heads/main"
bin_dir="${HOME}/.local/bin"
bin_path="${bin_dir}/pomogator"

command -v curl >/dev/null 2>&1
mkdir -p "$bin_dir"
curl -fsSL "${repo}/pomogator" -o "$bin_path"
chmod +x "$bin_path"
printf '%s\n' "$bin_path"
