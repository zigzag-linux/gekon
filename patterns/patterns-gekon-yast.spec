Name:           patterns-gekon-yast
Version:        20170311
Release:        0
Summary:        YaST distribution of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_yast
Provides:       pattern-icon() = yast-misc
Provides:       pattern-order() = 1140

Recommends: yast2-control-center-qt
Requires: libyui-qt7
Requires: libyui-qt-pkg7
Recommends: yast2-firewall
Recommends: yast2-fonts
Recommends: yast2-country
Recommends: yast2-users
Recommends: yast2-sudo
Recommends: yast2-online-update-frontend
Recommends: yast2-sound
Recommends: yast2-apparmor
Recommends: yast2-sysconfig
Recommends: yast2-snapper
Recommends: yast2-live-installer

%description
This package groups all packages of YaST installed by default on Gekon

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_yast.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_yast.txt
