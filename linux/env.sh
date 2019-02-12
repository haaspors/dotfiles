#!/bin/bash

gsettings set org.gnome.desktop.default-applications.terminal exec x-terminal-emulator

# Caps lock -> Ctrl
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"

# Keyboard repeat setup
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
