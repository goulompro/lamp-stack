
#!/bin/sh
set -e

git clone https://github.com/mattpass/ICEcoder.git /var/www/html/ICEcoder
cd /var/www/html/ICEcoder
chmod 757 {backups,lib,plugins,test,tmp}
