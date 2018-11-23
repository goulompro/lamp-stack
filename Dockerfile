FROM ubuntu:18.04
MAINTAINER Christopher Wendholt <goulom.c.w.98@gmail.com>
LABEL Description="Cutting-edge LAMP stack, based on Ubuntu 18.04 LTS." \
        Usage="docker run -dit -p 80:80 -p 3306:3306 -p 95:22 --name lamp-stack --restart always goulompro/lamp-stack" \
        User: webadmin Password: webadmin
        Version="1.0"

RUN apt-get update
RUN apt-get upgrade -y

# Install wanted Software
RUN apt-get install -y -q zip unzip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q apache2 libapache2-mod-php7.2 php7.2 php7.2-mysql mysql-server
RUN apt-get install git nodejs npm composer nano tree vim curl ftp -y -q
RUN apt-get install -y -q openssh-server
RUN npm install -g -q bower grunt-cli gulp

RUN apt-get upgrade -y

# expose Port to the outher World
EXPOSE 22
EXPOSE 80
EXPOSE 3306

# Create User webadmin and use it as standard Container-User
# Ideal for SSH
# User webadmin Password webadmin
RUN useradd -m -g 0 -p 5Y7whX6lpu7oU webadmin
USER webadmin
WORKDIR /home/webadmin

#COPY start.sh /usr/sbin/
#RUN chmod +x /usr/sbin/start.sh
#CMD ["/usr/sbin/start.sh"]
