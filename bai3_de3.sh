#!/bin/bash
sudo lsblk
sudo mkdir -p /KMA/Security
sudo mkdir /THI
sudo mount /dev/sr0 /KMA/Security
ls /KMA/Security
sudo cp /KMA/Security/md5sum.txt  /THI/
ls /THI
