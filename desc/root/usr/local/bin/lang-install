#!/usr/bin/env bash

# Install needed translation packages
# run: ./lang-install

lang_short=${LANG:0:2}
lang_full=${LANG:0:5}
recommended=$(zypper -n packages -u --recommended)
awk_filter="/-lang |-$lang_short |-$lang_full /{print \$4}"
echo "$recommended" | awk "$awk_filter" | tr '\n' ' ' | xargs sudo zypper install
