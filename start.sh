#!/bin/sh
service ssh start
service apache2 start
service mysql start
echo '-e "root\nroot" | passwd webadmin'
