#!/bin/bash
lscpu | head -n 10
ip addr show ens33
ip addr flush dev ens33
ip addr add 172.16.1.0/16 dev ens33
echo "Da doi dia chi ip thanh 172.16.1.0/16"
ip addr show ens33
ip addr show ens33 | grep "mtu"
ip link set dev ens33 mtu 1400
cp /etc/passwd ./passwd1
gzip -k -v passwd1
