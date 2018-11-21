FROM ubuntu:18.04
MAINTAINER Christopher Wendholt <goulom.c.w.98@gmail.com>
LABEL Description="Cutting-edge LAMP stack, based on Ubuntu 16.04 LTS. Includes .htaccess support and popular PHP7 features, including composer and mail() function." \
        License="Apache License 2.0" \
        Usage="docker run -d -p [HOST WWW PORT NUMBER]:80 -p [HOST DB PORT NUMBER]:3306 -v [HOST WWW DOCUMENT ROOT]:/var/www/html -v [HOST DB DOCUMENT ROOT]:/var/lib/mysql fauria/lamp" \
        Version="1.0"

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q zip unzip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q apache2 libapache2-mod-php7.2 php7.2 php7.2-mysql mysql-server
RUN apt-get install -y openssh-server
RUN apt-get install git nodejs npm composer nano tree vim curl ftp -y -q
RUN npm install -g -q bower grunt-cli gulp

VOLUME /var/www/html
VOLUME /var/log/httpd
VOLUME /var/lib/mysql
VOLUME /var/log/mysql
VOLUME /etc/apache2

EXPOSE 22
EXPOSE 80
EXPOSE 3306
