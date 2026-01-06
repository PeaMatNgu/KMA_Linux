#!/bin/bash
ps -aux | head -n 10
sleep 1000 &
PID=$!
kill -STOP $PID
renice -n 10 -p $PID
kill -9 $PID
free -h
df -h
echo "aloalo123" > test.txt
ls -l test.txt
tar -czvf test.tar.gz test.txt

