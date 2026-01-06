#!/bin/bash
lsblk
mkdir -p /KMA/data
mount /dev/sr1 /KMA/data
cp /KMA/data/md5sum.txt /
ls -l / | grep md5sum

