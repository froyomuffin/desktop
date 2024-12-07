#!/bin/bash

# Terminate already running picom instances
killall -q picom

# Launch picom, using default config location ~/.config/picom/picom.conf
picom --unredir-if-possible 2>&1 | tee -a /tmp/picom.log & disown

echo "Picom launched..."
