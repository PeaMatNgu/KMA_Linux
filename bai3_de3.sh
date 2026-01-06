#!/bin/bash
lsblk
mkdir -p /KMA/Security
mkdir -p /THI
mount /dev/sr1 /KMA/Security
ls /KMA/Security
cp /KMA/Security/md5sum.txt /THI
ls -l /THI

