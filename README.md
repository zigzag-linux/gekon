# Gekon

## About

This repo contains applience source files needed to build iso images of Gekon - the openSUSE spin distro.

## Download

Prebuilt Gekon images are available at Open Build Service [here]().

## Building

### Resquirements

The only requirement on the host system is Docker installed and configured without root permissions. The build script will take care of building the container image and installing any required dependencies inside container.

### Processs

Clone the repo:

	git clone https://github.com/mkrawiec/gekon

Run build script:

	./build.sh

Resulting iso file will be located in the `out/` directory
