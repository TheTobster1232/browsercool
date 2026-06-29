#!/bin/bash
vncserver :1
websockify --web=/usr/share/novnc/ 6080 localhost:5901

chmod +x startup.sh

