#!/bin/sh
mkdir -p /usr/share/wordpress/
cd /usr/share/wordpress/
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz