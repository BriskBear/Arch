#!/usr/bin/env bash

bootctl install

cp templates/95-systemd-boot.hook /etc/pacman.d/hooks/
