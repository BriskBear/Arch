#!/usr/bin/env bash

function get_total() {
  sudo fdisk -l|grep "/dev/$1:"|awk '{print $7}' # TODO: remove `sudo` it's just for testing!
}

while [[ `get_total ${disk:-1}` -lt 16777216 ]]
do
  clear
  lsblk
  read -p 'Select a disk larger than 8Gb (eg. sda): ' disk
done
read -p 'How large shall the partition be? (whole Gb): ' size

csize=`echo "$size * 1024 * 2048"|bc`
total=`get_total ${disk:-1}`
start=`echo "$total - $csize"|bc`

echo -e "Start: $start\nEnd: $total"
