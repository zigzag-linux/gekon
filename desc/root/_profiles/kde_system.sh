#!/usr/bin/env bash

change_config()
{
    local path=$1; shift
    local key=$1; shift
    local value=$1; shift

    sed -i -e "s/^${key}=.*/${key}=${value}/g" ${path}
}

# Configure desktop settings
change_config /etc/sysconfig/displaymanager DISPLAYMANAGER '"sddm"'
change_config /etc/sysconfig/windowmanager DEFAULT_WM '"kde4"'

# Setup Breeze theme for sddm
change_config /etc/sddm.conf Current 'breeze'

# Set default cursor theme
change_config /usr/share/icons/default/index.theme Inherits 'breeze_cursors'

# Fix theme inconsistencies when running gui with sudo
echo 'XDG_CURRENT_DESKTOP=kde' >> /etc/environment

