#!/bin/sh
# Copy baked-in Continue config to ~/.continue so the extension finds it.
mkdir -p "${HOME}/.continue"
# Try multiple possible repo locations (Codespaces uses /workspaces/REPO_NAME)
for src in \
  ".continue/config.json" \
  "/workspaces/continue/.continue/config.json" \
  "$(cd "$(dirname "$0")/.." 2>/dev/null && pwd)/.continue/config.json"; do
  if [ -n "$src" ] && [ -f "$src" ]; then
    cp -f "$src" "${HOME}/.continue/config.json"
    echo "Continue config copied to ${HOME}/.continue/config.json"
    exit 0
  fi
done
exit 0
