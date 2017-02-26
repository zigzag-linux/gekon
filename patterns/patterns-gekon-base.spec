Name:           patterns-gekon-base
Version:        20170226
Release:        0
Summary:        Base system of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_base
Provides:       pattern-icon() = yast-misc
Provides:       pattern-order() = 1140

# System
Requires: deltarpm
Requires: rpmconf
Requires: bluez-firmware
Requires: branding-upstream
Requires: PackageKit-backend-zypp
Requires: snapper-zypp-plugin
Requires: desktop-translations
Requires: shim

# Security
Requires: ca-certificates-mozilla
Requires: mozilla-nss-certs
Requires: patterns-openSUSE-apparmor

# CLI Essentials
Requires: sudo
Requires: timezone
Requires: less
Requires: man
Requires: hdparm
Requires: psmisc
Requires: the_silver_searcher
Requires: tree
Requires: colordiff
Requires: lsof
Requires: dos2unix
Requires: patch
Requires: curl

# Network
Requires: iproute2
Requires: iputils
Requires: NetworkManager
Requires: NetworkManager-openvpn
Requires: SuSEfirewall2
Requires: avahi-utils
Requires: nss-mdns

# Diagnostics
Requires: sensors
Requires: dmidecode
Requires: hddtemp
Requires: sysfsutils
Requires: schedtool
Requires: pciutils
Requires: usbutils
Requires: powertop
Requires: smartmontools
Requires: iotop
Requires: inxi
Requires: screenfetch

# CLI Utils
Requires: stow
Requires: git
Requires: tmux
Requires: fish
Requires: neovim
Requires: neovim-symlinks

# Multimedia
Requires: alsa-firmware
Requires: alsa-utils
Requires: pulseaudio
Requires: pulseaudio-module-bluetooth
Requires: pulseaudio-module-zeroconf
Requires: alsa-plugins-pulse

# Filesystems
Requires: e2fsprogs
Requires: xfsprogs
Requires: btrfsprogs
Requires: hfsutils
Requires: ntfs-3g
Requires: ntfsprogs
Requires: dosfstools
Requires: f2fs-tools

# Archivers
Requires: p7zip
Requires: xar

%description
This package groups together all the basic components of Gekon Linux

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_base.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_base.txt
