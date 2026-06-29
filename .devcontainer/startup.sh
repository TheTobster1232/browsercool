#!/bin/bash

# Fix environment
export USER=root
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Ensure XFCE session starts correctly
echo "xfce4-session" > /root/.vnc/xstartup
chmod +x /root/.vnc/xstartup

# Kill any old VNC sessions
vncserver -kill :1 2>/dev/null

# Start VNC with your chosen resolution
vncserver :1 -geometry 1366x768

# Start noVNC / Websockify
websockify --web=/usr/share/novnc/ 6080 localhost:5901
