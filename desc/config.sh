#!/bin/bash
#======================================
# General Stuff
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

# Greeting...
echo "Configure image: [$kiwi_iname]..."

# Mount filesystems
baseMount

# Setup baseproduct link
suseSetupProduct

# Add missing gpg keys to rpm database
suseImportBuildKey

# Set up default runlevel
baseSetRunlevel 5

# SuSEconfig
suseConfig

# Configure desktop settings
baseUpdateSysConfig /etc/sysconfig/displaymanager DISPLAYMANAGER sddm
baseUpdateSysConfig /etc/sysconfig/windowmanager DEFAULT_WM kde4

# Fix font rendering
baseUpdateSysConfig /etc/sysconfig/fonts-config USE_LCDFILTER lcddefault
baseUpdateSysConfig /etc/sysconfig/fonts-config USE_RGBA rgb
baseUpdateSysConfig /etc/sysconfig/fonts-config FORCE_AUTOHINT yes
baseUpdateSysConfig /etc/sysconfig/fonts-config FORCE_HINTSTYLE hintslight
baseUpdateSysConfig /etc/sysconfig/fonts-config PREFER_SANS_FAMILIES "Open Sans"

# Fix permissions for polkit rules
chown -R polkitd:polkitd /etc/polkit-1/rules.d/

# Refresh all repos and accept gpg keys
zypper --non-interactive --gpg-auto-import-keys refresh

# Lock root user, make sure live user is in wheel
gpasswd -a $(id -nu 1000) wheel
passwd -l root

# Replace whatever version is hardcoded with $releasever
sed -i 's/openSUSE_Leap_.\{4\}/openSUSE_Leap_$releasever/g' /etc/zypp/repos.d/*.repo
sed -i 's/leap\/.\{4\}/leap\/$releasever/g' /etc/zypp/repos.d/*.repo

# Use NetworkManager to manage connections
systemctl disable wicked
systemctl enable NetworkManager

# Unmount filesystems
baseCleanMount

exit 0

