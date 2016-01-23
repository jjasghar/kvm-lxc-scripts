#!/bin/bash

DATE=`date +%F`

virt-install \
--name centos6-${DATE} \
--ram 1024 \
--disk path=/home/ubuntu/images/centos6-${DATE}.qcow2,size=8 \
--vcpus 1 \
--graphics none \
--console pty,target_type=serial \
--location 'http://mirror.i3d.net/pub/centos/6/os/x86_64/' \
--extra-args 'console=ttyS0,115200n8 serial'
