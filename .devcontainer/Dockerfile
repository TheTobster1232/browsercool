FROM ubuntu:22.04

RUN apt update && apt install -y \
    xfce4 xfce4-goodies \
    tightvncserver novnc websockify \
    arc-theme thunar firefox vlc gedit

RUN mkdir -p /root/.vnc && \
    echo "xfce4-session" > /root/.vnc/xstartup && \
    chmod +x /root/.vnc/xstartup
