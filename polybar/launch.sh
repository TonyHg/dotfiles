#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do 
    sleep 1;
done
function set_env_vars() {
    export DEFAULT_NETWORK_INTERFACE

    DEFAULT_NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
}

# Launch bar
set_env_vars
polybar -r bottombar &
polybar -r topbar
