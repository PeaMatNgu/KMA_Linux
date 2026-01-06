#!/bin/bash
useradd -m U10
echo "U10:sv123" | chpasswd
groupadd G123
mkdir -p /KMA10
echo "tao la bo nguyen vu" > /KMA10/test2.txt
ls -l /KMA10
chown :G123 /KMA10/test2.txt
chmod 755 /KMA10/test2.txt
ls -l /KMA10
chown U10: /KMA10
su - U10 -c "gzip -c /KMA10/test2.txt > /KMA10/filenen.gz"
ls -l /KMA10
ps -aux | head -n 10


