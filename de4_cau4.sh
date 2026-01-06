#!/bin/bash
rm /KMA/Baitap/vanban2.txt
mkdir -p /KMA/Baitap
echo "Vu ngu vcl" > /KMA/Baitap/vanban2.txt
ls -l /KMA/Baitap
chmod 774 /KMA/Baitap/vanban2.txt
ls -l /KMA/Baitap
useradd -m U25
echo "U25:sv123" | chpasswd
chown U25:U25 /KMA/Baitap
su - U25 -c "mv /KMA/Baitap/vanban2.txt /KMA/Baitap/soanthao.txt"
ip addr show
