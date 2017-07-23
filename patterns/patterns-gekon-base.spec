Name:           patterns-gekon-base
Version:        20170723
Release:        0
Summary:        Base system of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_base
Provides:       pattern-icon() = yast-misc
Provides:       pattern-order() = 1140

# Branding
Requires: branding-openSUSE

# Filesystem progs
Requires: e2fsprogs
Requires: xfsprogs
Requires: btrfsprogs
Requires: hfsutils
Requires: ntfs-3g
Requires: ntfsprogs
Requires: dosfstools
Requires: f2fs-tools

# Basic utilities
Requires: sudo
Requires: finger
Requires: timezone
Requires: man
Requires: psmisc
Requires: lsof
Requires: patterns-openSUSE-apparmor
Requires: rng-tools
Requires: libcap-progs
Requires: acl
Requires: shim
Requires: lvm2
Requires: mdadm
Requires: cryptsetup
Requires: desktop-translations
Requires: update-desktop-files

# Package management
Requires: deltarpm
Requires: rpmconf
Requires: PackageKit-backend-zypp
Requires: snapper-zypp-plugin
Requires: flatpak

# Hardware management
Requires: sensors
Requires: dmidecode
Requires: hddtemp
Requires: hdparm
Requires: sysfsutils
Requires: schedtool
Requires: pciutils
Requires: usbutils
Requires: smartmontools
Requires: iotop

# Networking
Requires: iproute2
Requires: iputils
Requires: NetworkManager
Requires: NetworkManager-openvpn
Requires: SuSEfirewall2
Requires: avahi-utils
Requires: samba-client

# Certificates
Requires: ca-certificates-mozilla
Requires: mozilla-nss-certs

# Cli utilities
Requires: less
Requires: the_silver_searcher
Requires: tree
Requires: colordiff
Requires: dos2unix
Requires: patch
Requires: curl
Requires: bc
Requires: inxi
Requires: screenfetch
Requires: stow
Requires: git
Requires: tmux
Requires: fish
Requires: neovim
Requires: python3-neovim
Requires: neovim-symlinks
Requires: command-not-found
Requires: youtube-dl

# Archivers
Requires: p7zip
Requires: rar
Requires: xar

# Multimedia
Requires: alsa-firmware
Requires: alsa-utils
Requires: pulseaudio
Requires: pulseaudio-module-bluetooth
Requires: pulseaudio-module-zeroconf
Requires: alsa-plugins-pulse

%description
This package groups together all the basic components of Gekon Linux

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_base.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_base.txt
