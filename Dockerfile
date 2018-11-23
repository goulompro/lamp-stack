FROM ubuntu:18.04
MAINTAINER Christopher Wendholt <goulom.c.w.98@gmail.com>
LABEL Description="Cutting-edge LAMP stack, based on Ubuntu 18.04 LTS." \
        Usage="docker run -dit -p 80:80 -p 3306:3306 -p 95:22 --name lamp-stack --restart always goulompro/lamp-stack" \
        Version="1.0"

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q zip unzip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q apache2 libapache2-mod-php7.2 php7.2 php7.2-mysql mysql-server
RUN apt-get install git nodejs npm composer nano tree vim curl ftp -y -q
RUN apt-get install -y -q openssh-server
RUN npm install -g -q bower grunt-cli gulp

EXPOSE 22
EXPOSE 80
EXPOSE 3306

# User: webadmin Password: webadmin
RUN useradd -m -g sudo -p 5Y7whX6lpu7oU webadmin

#COPY start.sh /usr/sbin/
#RUN chmod +x /usr/sbin/start.sh
#CMD ["/usr/sbin/start.sh"]

USER webadmin
WORKDIR /home/webadmin
