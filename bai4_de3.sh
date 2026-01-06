#!/bin/bash
# Card mạng của bạn là ens33

echo "--- 1. Dat IP tinh: 192.168.0.100/24 ---"
# Thêm IP mới và bật card mạng
sudo ip addr add 192.168.0.100/255.255.255.0 dev ens33
sudo ip link set ens33 up

echo -e "\n--- 2. Kiem tra dia chi Localhost (lo) ---"
# Hiển thị thông tin giao diện lo
ip addr show lo

echo -e "\n--- 3. Kiem tra thong mang toi may vat ly ---"
# Ping 3 gói tin để không bị treo script
ping -c 3 localhost

echo -e "\n--- 4. Thay doi thanh IP moi: 192.168.1.200/30 ---"
# Bước quan trọng: Xóa sạch các IP cũ trên card ens33 trước khi đặt IP mới
sudo ip addr flush dev ens33
sudo ip addr add 192.168.1.200/255.255.255.252 dev ens33

echo -e "\n--- 5. Kiem tra lai IP sau khi da thay doi ---"
ip addr show ens33

echo -e "\n--- 6. Cach tai file tu download.net/file1 ---"
# Ghi chú lệnh theo yêu cầu đề bài
echo "Lenh su dung: wget http://download.net/file1"
