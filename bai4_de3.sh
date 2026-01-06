#!/bin/bash
ip addr add 192.168.0.100/255.255.255.0 dev ens33
ip link set ens33 up
ip addr show
ping -c 3 localhost
sudo ip addr flush dev ens33
ip addr add 192.168.1.200/255.255.255.252 dev ens33
ip addr show ens33

echo " Lenh: wget http://download.net/file1"

