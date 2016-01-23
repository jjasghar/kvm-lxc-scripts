#!/bin/bash

DATE=`date +%F`

virt-install \
--name debian8-${DATE} \
--ram 1024 \
--disk path=/home/ubuntu/images/debian8-${DATE}.qcow2,size=8 \
--vcpus 1 \
--graphics none \
--console pty,target_type=serial \
--location 'http://ftp.nl.debian.org/debian/dists/jessie/main/installer-amd64/' \
--extra-args 'console=ttyS0,115200n8 serial'
