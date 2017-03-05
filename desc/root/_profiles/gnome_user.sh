#!/usr/bin/env bash

declare -r TERM_PROFILE=d419c8a3-6dc6-4fdf-992f-68d35f6add7b

change() {
    dconf write /org/gnome/$1 "$2"
}


# Workspace
change shell/enabled-extensions "['dash-to-panel@jderose9.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'nohotcorner@azuri.free.fr', 'TopIcons@phocean.net', 'status-area-horizontal-spacing@mathematical.coffee.gmail.com', 'dim-on-battery@nailfarmer.nailfarmer.com', 'caffeine@patapon.info']"
change shell/favorite-apps "['chromium-browser.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'geary.desktop', 'spotify.desktop', 'slack.desktop', 'org.gnome.Calendar.desktop', 'org.baedert.corebird.desktop', 'qtpass.desktop']"
change shell/overrides/dynamic-workspaces false
change nautilus/icon-view/default-zoom-level "'standard'"
change desktop/screensaver/lock-enabled true
change desktop/peripherals/touchpad/tap-to-click true


# Appearance
change shell/extensions/user-theme/name "'Arc-Dark'"
change desktop/interface/icon-theme "'Papirus-Dark'"
change desktop/interface/gtk-theme "'Arc-Darker'"
change desktop/interface/monospace-font-name "'Iosevka Term 12'"
change desktop/wm/preferences/button-layout "'appmenu:minimize,close'"


# Keyboard
change settings-daemon/plugins/media-keys/screensaver "'<Super>Escape'"
change shell/keybindings/toggle-message-tray "['<Super>v']"
change shell/keybindings/open-application-menu "['<Super>F1']"
change shell/keybindings/toggle-application-view "['<Super>d']"
change shell/keybindings/focus-active-notification "['<Super>n']"
change desktop/wm/keybindings/move-to-workspace-left "@as []"
change desktop/wm/keybindings/move-to-monitor-right "['<Shift><Super>l']"
change desktop/wm/keybindings/begin-move "@as []"
change desktop/wm/keybindings/switch-to-workspace-left "@as []"
change desktop/wm/keybindings/move-to-monitor-left "['<Shift><Super>h']"
change desktop/wm/keybindings/switch-to-workspace-2 "['<Super>2']"
change desktop/wm/keybindings/switch-to-workspace-3 "['<Super>3']"
change desktop/wm/keybindings/switch-to-workspace-1 "['<Super>1']"
change desktop/wm/keybindings/cycle-windows "@as []"
change desktop/wm/keybindings/panel-run-dialog "['<Super>F2']"
change desktop/wm/keybindings/switch-to-workspace-4 "['<Super>4']"
change desktop/wm/keybindings/maximize "@as []"
change desktop/wm/keybindings/toggle-fullscreen "['<Shift><Super>f']"
change desktop/wm/keybindings/begin-resize "@as []"
change desktop/wm/keybindings/toggle-maximized "['<Super>f']"
change desktop/wm/keybindings/unmaximize "@as []"
change desktop/wm/keybindings/switch-to-workspace-right "@as []"
change desktop/wm/keybindings/move-to-workspace-down "@as []"
change desktop/wm/keybindings/move-to-workspace-1 "['<Shift><Super>exclam']"
change desktop/wm/keybindings/move-to-workspace-2 "['<Shift><Super>at']"
change desktop/wm/keybindings/move-to-workspace-last "@as []"
change desktop/wm/keybindings/move-to-workspace-3 "['<Shift><Super>numbersign']"
change desktop/wm/keybindings/move-to-workspace-4 "['<Shift><Super>dollar']"
change desktop/wm/keybindings/minimize "@as []"
change desktop/wm/keybindings/switch-applications "@as []"
change desktop/wm/keybindings/switch-panels-backward "['<Shift><Super>Tab']"
change desktop/wm/keybindings/switch-applications-backward "@as []"
change desktop/wm/keybindings/move-to-monitor-down "['<Shift><Super>j']"
change desktop/wm/keybindings/cycle-group "@as []"
change desktop/wm/keybindings/activate-window-menu "['<Super>F3']"
change desktop/wm/keybindings/cycle-panels "@as []"
change desktop/wm/keybindings/switch-to-workspace-down "@as []"
change desktop/wm/keybindings/move-to-workspace-up "@as []"
change desktop/wm/keybindings/move-to-workspace-right "@as []"
change desktop/wm/keybindings/switch-panels "['<Super>Tab']"
change desktop/wm/keybindings/move-to-monitor-up "['<Shift><Super>k']"
change desktop/wm/keybindings/close "['<Shift><Super>q']"
change desktop/wm/keybindings/switch-to-workspace-last "@as []"
change desktop/wm/keybindings/switch-to-workspace-up "@as []"
change mutter/keybindings/toggle-tiled-right "['<Super>l']"
change mutter/keybindings/toggle-tiled-left "['<Super>h']"


# Extensions
change shell/extensions/status-area-horizontal-spacing/hpadding 2

change shell/extensions/caffeine/enable-fullscreen false
change shell/extensions/caffeine/show-notifications false
change shell/extensions/caffeine/user-enabled false

change shell/extensions/dim-on-battery/ac-brightness 70.0
change shell/extensions/dim-on-battery/battery-brightness 84.0

change shell/extensions/dash-to-panel/location-clock "'STATUSRIGHT'"
change shell/extensions/dash-to-panel/show-show-apps-button false

change shell/extensions/topicons/icon-opacity 255
change shell/extensions/topicons/icon-size 18
change shell/extensions/topicons/icon-spacing 12
change shell/extensions/topicons/tray-pos "'center'"
change shell/extensions/topicons/icon-saturation 0.0


# Terminal
change terminal/legacy/schema-version/uint32 3
change terminal/legacy/default-show-menubar false
change terminal/legacy/profiles:/list "['$TERM_PROFILE']"
change terminal/legacy/profiles:/:$TERM_PROFILE/foreground-color "'#c5c8c6'"
change terminal/legacy/profiles:/:$TERM_PROFILE/visible-name "'hybrid_reduced_contrast'"
change terminal/legacy/profiles:/:$TERM_PROFILE/palette "['#2d3c46', '#a54242', '#8c9440', '#de935f', '#5f819d', '#85678f', '#5e8d87', '#6c7a80', '#425059', '#cc6666', '#b5bd68', '#f0c674', '#81a2be', '#b294bb', '#8abeb7', '#c5c8c6']"
change terminal/legacy/profiles:/:$TERM_PROFILE/use-system-font false
change terminal/legacy/profiles:/:$TERM_PROFILE/use-theme-colors false
change terminal/legacy/profiles:/:$TERM_PROFILE/font "'Iosevka Term 14'"
change terminal/legacy/profiles:/:$TERM_PROFILE/use-theme-background false
change terminal/legacy/profiles:/:$TERM_PROFILE/bold-color-same-as-fg true
change terminal/legacy/profiles:/:$TERM_PROFILE/bold-color "'#c5c8c6'"
change terminal/legacy/profiles:/:$TERM_PROFILE/background-color "'#232c31'"
change terminal/legacy/profiles:/:$TERM_PROFILE/scrollbar-policy "'never'"
change terminal/legacy/profiles:/:$TERM_PROFILE/audible-bell false

