#!/bin/bash
sudo useradd -m U1
echo "U1:abc@123" | chpasswd
su - U1 -c "echo 'aloalo' > F1.txt"
su - U1 -c "echo 'alo123' > f1.txt"
ls -l /home/U1/f1.txt
ls -l /home/U1/F1.txt
ls -li /home/U1/F1.txt /home/U1/f1.txt


