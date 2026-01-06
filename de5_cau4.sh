#!/bin/bash
useradd -m User123
echo "User123:2711" | chpasswd
groupadd G123
mkdir -p /KMA
echo "check123aloalo" > /KMA/test2.txt
ls -l /KMA/test2.txt
chown User123:G123 /KMA/test2.txt
chmod 550 /KMA/test2.txt
ls -l /KMA/test2.txt
su - User123 -c "gzip -c /KMA/test2.txt > /tmp/filenen.gz"
ps -aux
