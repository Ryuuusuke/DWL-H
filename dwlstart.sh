#!/bin/bash

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=wlroots

#dwl -s 'dwlb -font "monospaced:size=12" -ipc' &
dbus-run-session dwl
COMPOSITOR_PID=$!
dbus-update-activation-environment XDG_CURRENT_DESKTOP WAYLAND_DISPLAY
