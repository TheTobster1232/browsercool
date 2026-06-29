export USER=root
vncserver -kill :1 2>/dev/null
vncserver :1 -geometry 1920x1080
websockify --web=/usr/share/novnc/ 6080 localhost:5901

#!/bin/bash
vncserver :1
websockify --web=/usr/share/novnc/ 6080 localhost:5901

chmod +x startup.sh

export USER=root
echo "xfce4-session" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
vncserver -kill :1 2>/dev/null
vncserver :1 -geometry 1920x1080
websockify --web=/usr/share/novnc/ 6080 localhost:5901
