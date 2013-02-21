#bin/sh/
yum install httpd php php-pear php-mysql
cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.backup
chmod -R 0777 var/www
 
