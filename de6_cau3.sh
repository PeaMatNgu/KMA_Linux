#!/bin/bash
mkdir -p /KMA
echo "Mot ngay tot lanh" > /KMA/svktmm.txt
cat /KMA/svktmm.txt
echo "Cao Tran Thanh Trung" >> /KMA/svktmm.txt
cat /KMA/svktmm.txt
tar -cjvf kma_archive.tar.bz2 /KMA
ls -lh kma_archive.tar.bz2
