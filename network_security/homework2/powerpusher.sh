#!/bin/bash

wget https://threadz-ncat.s3.amazonaws.com/comp726/bof.cpp

echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

g++ -fno-stack-protector bof.cpp

wget https://threadz-ncat.s3.amazonaws.com/comp726/input-hw2.txt

./a.out < input-hw2.txt

wget https://threadz-ncat.s3.amazonaws.com/comp726/newinput

./a.out < newinput
