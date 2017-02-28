#!/usr/bin/env bash

cd /tmp || exit
sudo apt-get update -y
sudo apt-get install -y python python-pip python3-pip \
 apache2 git tcpdump python-dev python-jinja2 python-ldap \
 python-yaml python-docutils python-libxml2 python-libxslt1 \
 build-essential libxslt1-dev libxml2-dev
sudo pip3 install requests flask
