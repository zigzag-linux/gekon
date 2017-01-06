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
baseUpdateSysConfig /etc/sysconfig/fonts-config FORCE_HINTSTYLE hintmedium
baseUpdateSysConfig /etc/sysconfig/fonts-config PREFER_SANS_FAMILIES "Open Sans"
baseUpdateSysConfig /etc/sysconfig/fonts-config PREFER_MONO_FAMILIES "Iosevka"

# Fix permissions for polkit rules
chown -R polkitd:polkitd /etc/polkit-1/rules.d/

# Refresh all repos and accept gpg keys
zypper --non-interactive --gpg-auto-import-keys refresh

# Build dynamic linker cache
ldconfig

# Lock root user
passwd -l root

# Replace whatever version is hardcoded with $releasever
sed -i 's/openSUSE_Leap_.\{4\}/openSUSE_Leap_$releasever/g' /etc/zypp/repos.d/*.repo
sed -i 's/leap\/.\{4\}/leap\/$releasever/g' /etc/zypp/repos.d/*.repo

# Enable additional services
systemctl enable systemd-timesyncd
systemctl enable SuSEfirewall2
systemctl enable thermald
systemctl enable tlp tlp-sleep

# Use NetworkManager to manage connections
systemctl disable wicked
systemctl enable NetworkManager

# Setup Breeze theme for sddm
sed -i -e 's/^Current=.*/Current=breeze/g' /etc/sddm.conf

# Fix theme inconsistencies when running gui with sudo
echo 'XDG_CURRENT_DESKTOP=kde' >> /etc/environment

# Unmount filesystems
baseCleanMount

exit 0

