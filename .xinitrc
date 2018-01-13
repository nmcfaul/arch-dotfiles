#!/bin/sh
# vim:ts=4:sw=4:expandtab


eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

xrdb -merge ~/.Xresources

xset r rate 200 20

exec i3
