  GNU nano 7.2                                             bai3.sh                                                      
#!/bin/bash
useradd -m U3
useradd -m U4
echo "U3:123" | chpasswd
echo "U4:123" | chpasswd
usermod -aG root U3
usermod -aG root U4
mkdir /home/KMA2
echo "------"
cp -r /home/KMA2 /home/U3
echo "-------"
su - U3 -c "rm -rf /home/KMA2"
ls -l /home/

