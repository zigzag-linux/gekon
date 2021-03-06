Name:           patterns-gekon-gnome
Version:        20170819
Release:        0
Summary:        GNOME distribution of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_gnome
Provides:       pattern-icon() = gnome-misc
Provides:       pattern-order() = 1140

# Desktop
Requires: gdm
Requires: cantarell-fonts
Requires: gnome-shell
Requires: gnome-control-center-goa
Requires: gnome-control-center-color
Requires: gnome-control-center-user-faces
Requires: NetworkManager-gnome
Requires: NetworkManager-openvpn-gnome
Requires: gnome-keyring-pam
Requires: polkit-gnome
Requires: gsettings-backend-dconf
Requires: xdg-user-dirs-gtk
Requires: xdg-desktop-portal-gtk
Requires: gvfs-backend-afc
Requires: gvfs-backend-samba
Requires: libgnomesu-stub
Requires: pinentry-gtk2
Requires: openssh-askpass-gnome

# Look&Feel
Requires: papirus-icon-theme
Requires: gnome-shell-theme-adapta
Requires: chrome-theme-adapta
Requires: gtk2-metatheme-adapta
Requires: gtk3-metatheme-adapta

# GNOME Apps
Requires: gnome-calculator
Requires: gnome-calendar
Requires: gnome-characters
Requires: gnome-clocks
Requires: gnome-disk-utility
Requires: gnome-font-viewer
Requires: gnome-screenshot
Requires: gnome-software
Requires: gnome-system-monitor
Requires: gnome-terminal
Requires: gnome-power-manager
Requires: gnome-tweak-tool
Requires: seahorse
Requires: dconf-editor
Requires: eog
Requires: baobab
Requires: file-roller
Requires: evince
Requires: evince-plugin-pdfdocument
Requires: evince-plugin-djvudocument
Requires: nautilus
Requires: nautilus-extension-terminal
Requires: nautilus-file-roller
Requires: gedit
Requires: cheese

# Apps
Requires: chromium
Requires: chrome-gnome-shell
Requires: transmission-gtk
Requires: qtpass
Requires: geary
Requires: corebird
Requires: gpick
Requires: mpv

%description
This package groups all packages of GNOME installed by default on Gekon

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_gnome.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_gnome.txt
