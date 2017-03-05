#!/usr/bin/env bash

# Import common functions
source /_profiles/utils.sh

# Configure desktop settings
baseUpdateSysConfig /etc/sysconfig/displaymanager DISPLAYMANAGER sddm
baseUpdateSysConfig /etc/sysconfig/windowmanager DEFAULT_WM kde4

# Setup Breeze theme for sddm
change_config /etc/sddm.conf Current 'breeze'

# Set default cursor theme
change_config /usr/share/icons/default/index.theme Inherits 'breeze_cursors'

# Fix theme inconsistencies when running gui with sudo
echo 'XDG_CURRENT_DESKTOP=kde' >> /etc/environment

