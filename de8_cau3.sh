#!/bin/bash
lsblk
mkdir -p /KMA/data
mkfs.ext4 /dev/sdb -F
mount /dev/sdb /KMA/data
echo "test123" > /KMA/data/test123.txt
cp /KMA/data/test123.txt /
ls / | grep "test123.txt"

