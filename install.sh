#!/bin/bash
set -e

mkdir -pv "$HOME/.local/bin"

for file in scripts/*; do
    if [ -f "$file" ]; then
        chmod +x "$file"
        target="$HOME/.local/bin/$(basename "$file")"
        ln -fsv "$(realpath "$file")" "$target"
    fi
done
