  GNU nano 7.2                                             bai2.sh                                                      
#!/bin/bash
lsblk
mkfs.ext4 /dev/sdb
mkdir -p /THI1_HK
mkdir -p /THI2_HK
mount /dev/sdb /THI1_HK
echo "test thoi 123" > /THI1_HK/ok.txt
rsync -av /THI1_HK/ok.txt /THI2_HK
echo "KetquaTHI2"
ls -l /THI2_HK/
mkdir -p /THI21
cp /etc/passwd /THI1_HK/
umount /dev/sdb
echo "Ketqua THI1"
ls -l /THI1_HK/



