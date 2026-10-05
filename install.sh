#!/usr/bin/env bash
# Symlink dotfiles from this repo into $HOME. Safe to re-run.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FILES=(.Xclients)

for f in "${FILES[@]}"; do
  target="$HOME/$f"
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    mv "$target" "$target.bak.$(date +%Y%m%d%H%M%S)"
    echo "backed up existing $target"
  fi
  ln -sfn "$REPO_DIR/$f" "$target"
  echo "linked $target -> $REPO_DIR/$f"
done
