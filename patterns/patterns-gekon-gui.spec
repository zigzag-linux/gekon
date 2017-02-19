Name:           patterns-gekon-gui
Version:        20170219
Release:        0
Summary:        Basic graphical components of Gekon
License:        GPL-3.0
Group:          Metapackages
Url:            https://github.com/mkrawiec/gekon
Provides:       pattern() = gekon_gui
Provides:       pattern-icon() = yast-misc
Provides:       pattern-order() = 1140

# X.org
Requires: x11-tools
Requires: xrandr
Requires: xdpyinfo
Requires: xkeyboard-config
Requires: xorg-x11
Requires: xf86-input-libinput
Requires: xorg-x11-driver-video
Requires: xorg-x11-libX11-ccache
Requires: xorg-x11-server
Requires: Mesa-demo-x

# Fonts
Requires: xorg-x11-fonts
Requires: liberation-fonts
Requires: google-opensans-fonts
Requires: dejavu-fonts
Requires: iosevka-fonts
Requires: fetchmsttfonts

# Multimedia
Requires: alsa-plugins-pulse
Requires: ffmpeg
Requires: youtube-dl
Requires: livestreamer
Requires: mpv

%description
This package provides basis for graphical environments of Gekon

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_gui.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_gui.txt
