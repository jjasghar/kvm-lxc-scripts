#!/bin/bash

DATE=`date +%F`

virt-install \
--name ubuntu14-${DATE} \
--ram 1024 \
--disk path=/home/ubuntu/images/ubuntu14-${DATE}.qcow2,size=8 \
--vcpus 1 \
--graphics none \
--console pty,target_type=serial \
--location 'http://archive.ubuntu.com/ubuntu/dists/trusty/main/installer-amd64/' \
--extra-args 'console=ttyS0,115200n8 serial'
