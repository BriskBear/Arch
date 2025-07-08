#!/usr/bin/env bash

bootctl install

hook_dir="/etc/pacman.d/hooks"

[[ -d ${hook_dir} ]] || mkdir -v ${hook_dir}
cp templates/95-systemd-boot.hook ${hook_dir}/
