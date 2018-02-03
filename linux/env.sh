#!/bin/bash

gsettings set org.gnome.desktop.default-applications.terminal exec x-terminal-emulator

# Caps lock -> Ctrl
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"
