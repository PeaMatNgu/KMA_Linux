#!/bin/bash
mkdir -p /KMA/Baitap
echo "check thoi" > /KMA/Baitap/vanban2.txt
ls -l /KMA/Baitap/vanban2.txt
chmod 744 /KMA/Baitap/vanban2.txt
ls -l /KMA/Baitap/vanban2.txt
useradd -m U25
echo "U25:sv123" | chpasswd
chmod 747 /KMA/Baitap
su - U25 -c "mv /KMA/Baitap/vanban2.txt /KMA/Baitap/soanthao.txt"
ls -l /KMA/Baitap
ip addr
