#!/bin/bash

DATE=`date +%F`
SECONDS=`date +%s`


sudo lxc-create -t download -n u1 -- --dist ubuntu --release trusty --arch amd64

