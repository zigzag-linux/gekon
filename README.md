# Gekon

## About
Gekon is a spin of latest stable release of openSUSE Leap, made possible by venerable [kiwi](https://suse.github.io/kiwi/) tool. It strives to provide better out of the box experience.

This repo contains all source files needed to build Gekon images in different flavors.

## Differences with stock openSUSE
* Targeted at software developers
* Much smaller images without bloat
* Different default software selection
* Applied desktop shell customizations
* Live USB installation images
* Preconfigured [PackMan](http://packman.links2linux.org/) repo and codecs
* Fine tuning and optimizations
    * Ubuntu-style sudo with locked root user
    * Subpixel rendering support
    * TLP, thermald and powertop
    * Deadline scheduler
    * Zypp defaults to `--no-recommends`

## Building

### Requirements
The only requirement on the host system is Docker installed and configured without root permissions. The build script will take care of building the container image and installing all required dependencies inside the container.

### Process
Clone the repo:

    git clone https://github.com/mkrawiec/gekon

Run build script:

    ./build.sh gnome

The resulting image file will be located in the `out/` directory.

### Advanced building

    Usage: ./build.sh <profile> <type>

Build script takes two arguments, `profile` one of listed below and `type` - either `iso` (for live images) or `vmx` (for virtual machines)

Available profile values:

| Name     | Description                                                   |
|----------|---------------------------------------------------------------|
| `gnome`  | Gnome Shell powered desktop                                   |
| `plasma` | KDE Plasma 5 powered desktop                                  |
| `base`   | Minimal edition with all the goodies, base for all the others |
