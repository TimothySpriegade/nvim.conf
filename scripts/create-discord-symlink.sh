#!/bin/sh
# ~/.local/bin/create-discord-symlinks.sh
#
# Adjust APPID if necessary
APPID=${APPID:-dev.vencord.Vesktop}
RUNTIME=${XDG_RUNTIME_DIR:-/run/user/$(id -u)}

for i in 0 1 2 3 4 5 6 7 8 9; do
  target=$(find "$RUNTIME" -type s -name "discord-ipc-$i" -print -quit 2>/dev/null)
  if [ -n "$target" ] && [ -S "$target" ]; then
    ln -sf "$target" "$RUNTIME/discord-ipc-$i"
  fi
done