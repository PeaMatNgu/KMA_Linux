#!/bin/bash
useradd -m user123
useradd -m user456
echo "user123:123" | chpasswd
echo "user456:123" | chpasswd
mkdir -p /baitap
chown user123:user123 /baitap
su - user123 -c "echo 'CaoTranThanhTrungAT200360' > /baitap/test.txt"
chown user123:user456 /baitap/test.txt
chmod 660 /baitap/test.txt
su - user123 -c "ls -ld /baitap"
tar -cvzf baitap.tar.gz /baitap
usermod -l 789user user456
