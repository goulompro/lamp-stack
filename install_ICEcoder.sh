
#!/bin/sh
set -e

sudo git clone https://github.com/mattpass/ICEcoder.git /var/www/html/ICEcoder
sudo cd /var/www/html/ICEcoder
sudo chmod 757 {backups,lib,plugins,test,tmp}
