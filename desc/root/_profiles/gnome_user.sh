#!/usr/bin/env bash

declare -r ROOT=/org/gnome
declare -r TERM_PROFILE=d419c8a3-6dc6-4fdf-992f-68d35f6add7b


# Workspace
dconf write $ROOT/shell/enabled-extensions "['dash-to-panel@jderose9.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'nohotcorner@azuri.free.fr', 'TopIcons@phocean.net', 'status-area-horizontal-spacing@mathematical.coffee.gmail.com', 'dim-on-battery@nailfarmer.nailfarmer.com', 'caffeine@patapon.info']"
dconf write $ROOT/shell/favorite-apps "['chromium-browser.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'geary.desktop', 'spotify.desktop', 'slack.desktop', 'org.gnome.Calendar.desktop', 'org.baedert.corebird.desktop', 'qtpass.desktop']"
dconf write $ROOT/shell/overrides/dynamic-workspaces false
dconf write $ROOT/nautilus/icon-view/default-zoom-level "'standard'"
dconf write $ROOT/desktop/screensaver/lock-enabled true
dconf write $ROOT/desktop/peripherals/touchpad/tap-to-click true


# Appearance
dconf write $ROOT/shell/extensions/user-theme/name "'Arc-Dark'"
dconf write $ROOT/desktop/interface/icon-theme "'Papirus-Dark'"
dconf write $ROOT/desktop/interface/gtk-theme "'Arc-Darker'"
dconf write $ROOT/desktop/interface/monospace-font-name "'Iosevka Term 12'"
dconf write $ROOT/desktop/wm/preferences/button-layout "'appmenu:minimize,close'"


# Keyboard
dconf write $ROOT/settings-daemon/plugins/media-keys/screensaver "'<Super>Escape'"
dconf write $ROOT/shell/keybindings/toggle-message-tray "['<Super>v']"
dconf write $ROOT/shell/keybindings/open-application-menu "['<Super>F1']"
dconf write $ROOT/shell/keybindings/toggle-application-view "['<Super>d']"
dconf write $ROOT/shell/keybindings/focus-active-notification "['<Super>n']"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-left "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-monitor-right "['<Shift><Super>l']"
dconf write $ROOT/desktop/wm/keybindings/begin-move "@as []"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-left "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-monitor-left "['<Shift><Super>h']"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-2 "['<Super>2']"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-3 "['<Super>3']"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-1 "['<Super>1']"
dconf write $ROOT/desktop/wm/keybindings/cycle-windows "@as []"
dconf write $ROOT/desktop/wm/keybindings/panel-run-dialog "['<Super>F2']"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-4 "['<Super>4']"
dconf write $ROOT/desktop/wm/keybindings/maximize "@as []"
dconf write $ROOT/desktop/wm/keybindings/toggle-fullscreen "['<Shift><Super>f']"
dconf write $ROOT/desktop/wm/keybindings/begin-resize "@as []"
dconf write $ROOT/desktop/wm/keybindings/toggle-maximized "['<Super>f']"
dconf write $ROOT/desktop/wm/keybindings/unmaximize "@as []"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-right "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-down "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-1 "['<Shift><Super>exclam']"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-2 "['<Shift><Super>at']"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-last "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-3 "['<Shift><Super>numbersign']"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-4 "['<Shift><Super>dollar']"
dconf write $ROOT/desktop/wm/keybindings/minimize "@as []"
dconf write $ROOT/desktop/wm/keybindings/switch-applications "@as []"
dconf write $ROOT/desktop/wm/keybindings/switch-panels-backward "['<Shift><Super>Tab']"
dconf write $ROOT/desktop/wm/keybindings/switch-applications-backward "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-monitor-down "['<Shift><Super>j']"
dconf write $ROOT/desktop/wm/keybindings/cycle-group "@as []"
dconf write $ROOT/desktop/wm/keybindings/activate-window-menu "['<Super>F3']"
dconf write $ROOT/desktop/wm/keybindings/cycle-panels "@as []"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-down "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-up "@as []"
dconf write $ROOT/desktop/wm/keybindings/move-to-workspace-right "@as []"
dconf write $ROOT/desktop/wm/keybindings/switch-panels "['<Super>Tab']"
dconf write $ROOT/desktop/wm/keybindings/move-to-monitor-up "['<Shift><Super>k']"
dconf write $ROOT/desktop/wm/keybindings/close "['<Shift><Super>q']"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-last "@as []"
dconf write $ROOT/desktop/wm/keybindings/switch-to-workspace-up "@as []"
dconf write $ROOT/mutter/keybindings/toggle-tiled-right "['<Super>l']"
dconf write $ROOT/mutter/keybindings/toggle-tiled-left "['<Super>h']"


# Extensions
dconf write $ROOT/shell/extensions/status-area-horizontal-spacing/hpadding 2

dconf write $ROOT/shell/extensions/caffeine/enable-fullscreen false
dconf write $ROOT/shell/extensions/caffeine/show-notifications false
dconf write $ROOT/shell/extensions/caffeine/user-enabled false

dconf write $ROOT/shell/extensions/dim-on-battery/ac-brightness 70.0
dconf write $ROOT/shell/extensions/dim-on-battery/battery-brightness 84.0

dconf write $ROOT/shell/extensions/dash-to-panel/location-clock "'STATUSRIGHT'"
dconf write $ROOT/shell/extensions/dash-to-panel/show-show-apps-button false

dconf write $ROOT/shell/extensions/topicons/icon-opacity 255
dconf write $ROOT/shell/extensions/topicons/icon-size 18
dconf write $ROOT/shell/extensions/topicons/icon-spacing 12
dconf write $ROOT/shell/extensions/topicons/tray-pos "'center'"
dconf write $ROOT/shell/extensions/topicons/icon-saturation 0.0


# Terminal
dconf write $ROOT/terminal/legacy/schema-version/uint32 3
dconf write $ROOT/terminal/legacy/default-show-menubar false
dconf write $ROOT/terminal/legacy/profiles:/list "['$TERM_PROFILE']"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/foreground-color "'#c5c8c6'"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/visible-name "'hybrid_reduced_contrast'"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/palette "['#2d3c46', '#a54242', '#8c9440', '#de935f', '#5f819d', '#85678f', '#5e8d87', '#6c7a80', '#425059', '#cc6666', '#b5bd68', '#f0c674', '#81a2be', '#b294bb', '#8abeb7', '#c5c8c6']"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/use-system-font false
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/use-theme-colors false
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/font "'Iosevka Term 14'"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/use-theme-background false
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/bold-color-same-as-fg true
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/bold-color "'#c5c8c6'"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/background-color "'#232c31'"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/scrollbar-policy "'never'"
dconf write $ROOT/terminal/legacy/profiles:/:$TERM_PROFILE/audible-bell false

