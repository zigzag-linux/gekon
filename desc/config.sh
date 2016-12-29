#!/bin/bash
#======================================
# General Stuff
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

# Greeting...
echo "Configure image: [$kiwi_iname]..."

# Setup baseproduct link
suseSetupProduct

# SuSEconfig
suseConfig
baseSetRunlevel 5

baseUpdateSysConfig /etc/sysconfig/displaymanager DISPLAYMANAGER sddm
baseUpdateSysConfig /etc/sysconfig/windowmanager DEFAULT_WM kde4

# Fix permissions for polkit rules
chown -R polkitd:polkitd /etc/polkit-1/rules.d/

# Lock root user
gpasswd -a linux wheel
passwd -l root
