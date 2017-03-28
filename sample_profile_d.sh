#!/bin/sh
# Part of npi-config http://github.com/friendlyarm/npi-config
#
# See LICENSE file for copyright and license details

# Should be installed to /etc/profile.d/npi-config.sh to force npi-config 
# to run at initial login

if [ $(id -u) -ne 0 ]; then
  printf "\nNOTICE: the software on this NanoPi/NanoPC has not been fully configured. Please run 'sudo npi-config'\n\n"
else
  npi-config
  exec login -f fa
fi
