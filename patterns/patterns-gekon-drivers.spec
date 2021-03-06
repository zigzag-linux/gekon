Name:           patterns-gekon-drivers
Version:        20170723
Release:        0
Summary:        Drivers and firmware of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_drivers
Provides:       pattern-icon() = yast-misc
Provides:       pattern-order() = 1140

# Microcode
Requires: ucode-intel
Requires: ucode-intel-blob
Requires: ucode-amd

# Network cards
Requires: crda
Requires: b43legacy-firmware
Requires: atmel-firmware
Requires: bcm20702a1-firmware
Requires: ipw-firmware
Requires: zd1211-firmware

# Bluetooth adapters
Requires: bluez-firmware

%description
This package groups together the driver and firmware packages installed by default

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_drivers.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_drivers.txt
