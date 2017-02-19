Name:           patterns-gekon-laptop
Version:        20170219
Release:        0
Summary:        Laptop-related packages of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_laptop
Provides:       pattern-icon() = laptop-misc
Provides:       pattern-order() = 1140

Requires: thermald
Requires: tlp
Requires: tlp-rdw

%description
This package groups all packages related to laptops and netbooks

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_laptop.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_laptop.txt
