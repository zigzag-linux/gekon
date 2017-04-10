Name:           patterns-gekon-yast
Version:        20170410
Release:        0
Summary:        YaST distribution of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_yast
Provides:       pattern-icon() = yast-misc
Provides:       pattern-order() = 1140

Requires: yast2-control-center-qt
Requires: libyui-qt7
Requires: libyui-qt-pkg7
Requires: yast2-firewall
Requires: yast2-fonts
Requires: yast2-country
Requires: yast2-users
Requires: yast2-sudo
Requires: yast2-bootloader
Requires: yast2-update
Requires: yast2-online-update-frontend
Requires: yast2-sound
Requires: yast2-apparmor
Requires: yast2-sysconfig
Requires: yast2-snapper

%description
This package groups all packages of YaST installed by default on Gekon

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_yast.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_yast.txt
