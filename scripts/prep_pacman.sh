#!/usr/bin/env bash

## TODO: Test this script!

CORE_CT=`nproc`
HERE=`dirname $(realpath $0)`

## Copy USA speed-filtered mirrorlist and point to it
function prep-mirrorlist() {
  cp "$HERE/mirrorlist.raw" "/etc/pacman.d/"
  ln -fs "/etc/pacman.d/mirrorlist.raw" "/etc/pacman.d/mirror.list"

  sed -i "s/mirrorlist/mirror.list/g" /etc/pacman.conf
}

## Use as many cores as possible for package-management
function set-compile-cores() {
  # Set makepkg to use all available cores
  sed -i "s/-j2/-j$((CORE_CT + 1))/g" /etc/makepkg.conf
  sed -i "s/#MAKEFLAGS/MAKEFLAGS/g" /etc/makepkg.conf

  # Set pacman to download with all but 1 core (control core)
  sed -i "s/ParallelDownloads = \d/ParallelDownloads = $((CORE_CT - 1))/g" /etc/pacman.conf
}

# Neither function is order-dependent -> alphabetical
prep-mirrorlist
set-compile-cores
