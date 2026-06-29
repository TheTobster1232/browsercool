#!/bin/bash

# --- Environment fixes ---
export USER=root
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# --- Fix XFCE session startup ---
mkdir -p /root/.vnc
cat << 'EOF' > /root/.vnc/xstartup
#!/bin/bash
xrdb $HOME/.Xresources
dbus-launch startxfce4 &
EOF
chmod +x /root/.vnc/xstartup

# --- Kill any old VNC sessions ---
pkill Xtightvnc 2>/dev/null
pkill Xorg 2>/dev/null

# --- Start VNC server ---
vncserver :1 -geometry 1366x768

# --- Start noVNC in background (so terminal stays usable) ---
websockify --web=/usr/share/novnc/ 6080 localhost:5901 &
