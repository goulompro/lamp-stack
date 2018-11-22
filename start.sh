#!/bin/sh
service ssh start
service apache2 start
service mysql start
adduser --disabled-password webadmin --ingroup root
echo '-e "root\nroot" | passwd webadmin'
