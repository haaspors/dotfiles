#!/bin/bash

gsettings set org.gnome.desktop.default-applications.terminal exec x-terminal-emulator

# Gnome touchpad natural scrolling
gsettings set org.gnome.settings-daemon.peripherals.touchpad scroll-method 'two-finger-scrolling'
gsettings set org.gnome.settings-daemon.peripherals.touchpad natural-scroll true
