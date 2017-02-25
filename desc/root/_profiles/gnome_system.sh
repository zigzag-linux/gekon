#!/usr/bin/env bash

change_config()
{
    local path=$1; shift
    local key=$1; shift
    local value=$1; shift

    sed -i -e "s/^${key}=.*/${key}=${value}/g" ${path}
}

# Configure desktop settings
change_config /etc/sysconfig/displaymanager DISPLAYMANAGER '"gdm"'
change_config /etc/sysconfig/windowmanager DEFAULT_WM '"gnome"'
