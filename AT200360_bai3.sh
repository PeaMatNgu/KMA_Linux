#!/bin/bash
useradd -m U1
useradd -m U2
echo "U1:sv123456" | chpasswd
echo "U2:sv123456" | chpasswd
id U1
id U2
su - U1 -c "pwd"
mkdir /home/U1/KMA_U1
chown -R U1:U1 /home/U1/KMA_U1
mv /home/U1/KMA_U1 /home/U2/
ls -l /home/U2/


