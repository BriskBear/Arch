#!/usr/bin/env bash

function throw() {
  message="[48;5;196m[38;5;195m[1m $1 [0m\n"

  printf "${message}" | tee -a 'errors.log'
  return ${2:-1} 2>>errors.log \; exit ${2:-1}
}

function confirm() {
  message="[48;5;154m[38;5;16m[1m $1 [0m (y/n): "

  read -p "${message}"

  [[ `echo $REPLY | awk '{print tolower($0)}'` =~ ^y ]] && echo 1 || return 1
}
