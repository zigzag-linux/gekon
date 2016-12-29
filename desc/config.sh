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
