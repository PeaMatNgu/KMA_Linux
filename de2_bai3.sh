#!/bin/bash
sudo useradd -m U3
sudo useradd -m U4
 echo "U3:u3_1234" | sudo chpasswd
 echo "U4:u4_4567" | sudo chpasswd
sudo usermod -aG root U3
sudo usermod -aG root U4
sudo mkdir /KMA2
sudo cp -r /KMA2 /home/U3/
echo "Dang thuc hien xoa KMA2 o U3"
sudo su - U3 -c "rm -rf /KMA2"
echo "Ket qua kiem tra ton tai /KMA2"
ls -d /KMA2
