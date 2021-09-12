#!/bin/bash

# Terminate already running tint2 instances
killall -q tint2

# Wait until processes have been shut down
while pgrep -u $UID -x tint2 >/dev/null; do sleep 1; done

# Launch tint2, using config file at ~/.config/tint2/tint2rc
tint2 -c ~/.config/tint2/tint2rc &
