#!/bin/bash
sudo mkfs.ext4 /dev/sdb
sudo mkdir -p /THI1_HK /THI2_HK
sudo mount /dev/sdb /THI1_HK
echo "Day la file test" | sudo tee /THI1_HK/test123.txt
sudo rsync -av /THI1_HK/test123.txt /THI2_HK/
sudo mkdir -p /THI21
sudo cp /THI1_HK/test123.txt /THI21/
sudo umount /THI1_HK
echo "Ket qua kiem tra "
sudo ls /THI1_HK
echo "Ket qua dir THI2_HK la"
sudo ls /THI2_HK

