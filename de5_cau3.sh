#!/bin/bash
useradd -m user1
echo "user1:sv123" | chpasswd
groupadd group1
usermod -aG group1 user1
id user1
getent group group1
su - user1 -c "pwd"
echo "check123aloalo" > /home/user1/file1.txt
cat /home/user1/file1.txt
ls -l /home/user1/file1.txt

