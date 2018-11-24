# lamp-stack

# A LAMP-stack with apache2, mysql, php7, ICEcoder
docker run -dit -p 80:80 -p 3306:3306 -p 95:22 --name lamp-stack --restart always goulompro/lamp-stack
