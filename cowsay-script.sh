#!/bin/bash
echo 'Running shell script'
sudo apt install cowsay -y
cowsay "Hello Yatharth!!" >> cow.txt
cat cow.txt
ls -la
