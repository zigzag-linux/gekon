#!/usr/bin/env bash

# Import common functions
source /_profiles/utils.sh

# Configure desktop settings
baseUpdateSysConfig /etc/sysconfig/displaymanager DISPLAYMANAGER gdm
baseUpdateSysConfig /etc/sysconfig/windowmanager DEFAULT_WM gnome

# Set default cursor theme
change_config /usr/share/icons/default/index.theme Inherits 'Adwaita'
