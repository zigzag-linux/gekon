#!/usr/bin/env bash

# Apearance
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,close'
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Darker'
gsettings set org.gnome.desktop.interface monospace-font-name 'Iosevka Term 12'
gsettings set org.gnome.shell favorite-apps "['chromium-browser.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'geary.desktop', 'org.gnome.Calendar.desktop', 'org.baedert.corebird.desktop', 'qtpass.desktop']"

# Ask for password after diming screen
gsettings set org.gnome.desktop.screensaver lock-enabled true

# Terminal
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

# Nautilus
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'standard'

