#!/bin/bash

DATE=`date +%F`

virt-install \
--name centos7-${DATE} \
--ram 1024 \
--disk path=/home/ubuntu/images/centos7-${DATE}.qcow2,size=8 \
--vcpus 1 \
--graphics none \
--console pty,target_type=serial \
--location 'http://mirror.i3d.net/pub/centos/7/os/x86_64/' \
--extra-args 'console=ttyS0,115200n8 serial'
