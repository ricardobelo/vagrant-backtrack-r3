#!/bin/bash
source config

# sshd_config
# ListenAddress 10.0.2.15
# ListenAddress 192.168.33.33

if test -r ${identity} ; then
  opt="-i ${identity}"
fi

function login/copy() {
  if test -z "$*" ; then
    $copy wifi
    $copy wlanup
  fi
}

# login/copy $*

ssh ${opt} -X ${user}@${host_only} $*
