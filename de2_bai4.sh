#!/bin/bash
sudo lsblk
sudo mkfs.ext2 /dev/sdc
sudo mkdir -p /THI/THUCHANH
sudo mount /dev/sdc /THI/THUCHANH
echo "Day la file test" | sudo tee /ktbai2_de4.txt
sudo cp /ktbai2_de4.txt /THI/THUCHANH
sudo umount /THI/THUCHANH
sudo mount -o ro /dev/sdc /THI/THUCHANH
ls /THI/THUCHANH
echo "Dang thu xoa file de kiem tra tinh nang bao ve:"
sudo rm /THI/THUCHANH/ktbai2_de4.txt
