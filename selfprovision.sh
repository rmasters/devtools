#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

apt-get update -y
apt-get dist-upgrade -qy
apt-get install python-software-properties -qy

add-apt-repository ppa:rquillo/ansible -y
apt-get update -q
apt-get install ansible -qy

echo localhost > /etc/ansible/hosts
