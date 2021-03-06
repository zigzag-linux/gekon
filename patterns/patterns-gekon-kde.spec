Name:           patterns-gekon-kde
Version:        20170723
Release:        0
Summary:        KDE desktop of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_kde
Provides:       pattern-icon() = yast-misc
Provides:       pattern-order() = 1140

# Desktop
Requires: sddm
Requires: plasma5-session
Requires: plasma5-pk-updates
Requires: plasma5-pa
Requires: plasma-nm5
Requires: plasma-nm5-openvpn
Requires: bluedevil5
Requires: systemsettings5
Requires: pinentry-qt4
Requires: ksshaskpass5
Requires: kde-gtk-config5
Requires: kio_iso
Requires: kio_mtp
Requires: gtk2-metatheme-breeze
Requires: gtk3-metatheme-breeze
Requires: papirus-icon-theme
Requires: xdg-desktop-portal-kde

# KDE Apps
Requires: kde-print-manager
Requires: ksysguard5
Requires: kcalc
Requires: kinfocenter5
Requires: spectacle
Requires: kcolorchooser
Requires: konsole
Requires: gwenview5
Requires: okular
Requires: dolphin
Requires: dolphin-plugins
Requires: kamoso
Requires: ark
Requires: kwrite

# Apps
Requires: chromium
Requires: transmission-qt
Requires: qtpass
Requires: trojita
Requires: mpv

%description
This package groups together all packages installed by default on KDE desktop

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_kde.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_kde.txt
