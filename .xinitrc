#!/bin/sh
# vim:ts=4:sw=4:expandtab

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#    for f in /etc/X11/xinit/xinitrc.d/*; do
#        [ -x "$f" ] && . "$f"
#    done
#    unset f
#fi

xrdb -merge ~/.Xresources

xset r rate 200 30

#eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets)
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO

#exec i3
