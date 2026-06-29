
FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt update && apt install -y \
    xfce4 xfce4-goodies \
    tightvncserver novnc websockify \
    arc-theme thunar firefox vlc gedit \
    tzdata
