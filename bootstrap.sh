#!/usr/bin/env bash

cd /tmp || exit
sudo apt-get update -y
sudo apt-get install -y python python-pip python3-pip apache2 git tcpdump
sudo pip3 install requests flask
