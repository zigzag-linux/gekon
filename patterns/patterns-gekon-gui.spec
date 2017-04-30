Name:           patterns-gekon-gui
Version:        20170430
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
Requires: xorg-x11-libX11-ccache
Requires: xorg-x11-server

# Dekstop utils
Requires: xclip
Requires: xdg-user-dirs
Requires: xdg-utils
Requires: Mesa-demo-x
Requires: update-desktop-files

# Fonts
Requires: xorg-x11-fonts
Requires: liberation-fonts
Requires: cantarell-fonts
Requires: google-opensans-fonts
Requires: dejavu-fonts
Requires: iosevka-fonts
Requires: fetchmsttfonts
Requires: gdouros-symbola-fonts

# Multimedia
Requires: ffmpeg
Requires: youtube-dl
Requires: livestreamer
Requires: gstreamer-plugins-bad
Requires: gstreamer-plugins-bad-orig-addon
Requires: gstreamer-plugins-libav
Requires: gstreamer-plugins-ugly
Requires: gstreamer-plugins-ugly-orig-addon
Requires: gstreamer-plugins-good
Requires: gstreamer-plugins-good-extra
Requires: gstreamer-plugins-vaapi

# Video acceleration
Requires: vaapi-tools
Requires: libgstvdpau
Requires: Mesa-libva
Requires: libvdpau_va_gl1
Requires: libva-vdpau-driver
Requires: libva-egl1
Requires: libva-glx1

%description
This package provides basis for graphical environments of Gekon

%install
mkdir -p %{buildroot}/usr/share/doc/packages/patterns-gekon
touch %{buildroot}/usr/share/doc/packages/patterns-gekon/gekon_gui.txt

%files
%dir /usr/share/doc/packages/patterns-gekon
/usr/share/doc/packages/patterns-gekon/gekon_gui.txt
