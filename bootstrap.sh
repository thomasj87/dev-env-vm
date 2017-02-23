#!/usr/bin/env bash

cd /tmp || exit
sudo apt-get update -y
sudo apt-get install -y python python-pip python3-pip apache2 git tcpdump libxml2-dev libxslt1-dev python-dev python-jinja2 python-ldap python-libxslt1 python-lxml python-webdav python-yaml python-docutils
sudo pip3 install requests flask
sudo pip install ncclient