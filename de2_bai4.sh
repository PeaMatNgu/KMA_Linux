!/bin/bash
lscpu | head -n 10
mkfs.ext2 /dev/sdb
mkdir -p /home/THI/THUCHANH
mount /dev/sdb /home/THI/THUCHANH
cp /etc/passwd /home/THI/THUCHANH/
echo "Huy bo gan ket"
umount /dev/sdb
mount -o ro /dev/sdb /home/THI/THUCHANH
echo "xoa thu file"
rm -r /home/THI/THUCHANH/passwd
ls -l /home/THI/THUCHANH
