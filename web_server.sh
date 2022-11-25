#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install apache2 unzip -y && systemctl enable apache2
cd /tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip && unzip main.zip
cd linux-site-dio && cp -R * /var/www/html/
