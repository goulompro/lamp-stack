#!/bin/sh
service ssh start
service apache2 start
service mysql start
useradd --disabled-password webadmin --ingroup sudo
echo '-e "root\nroot" | passwd webadmin'
