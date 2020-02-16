#!/bin/bash


#install wordpress
apt update && apt install -y wget
cd /var/www/html/
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz
cp -r wordpress/* .

openssl req -x509 -newkey rsa:2048 -keyout mykey.key -out mycert.pem -days 365 -nodes -subj "/C=UA/ST=Lviv/L=Lviv/O=EPAMcamp/OU=DevOps/CN=localhost"

cp mycert.pem /etc/ssl/certs
cp mykey.key /etc/ssl/private
a2enmod ssl
cp /var/www/html/my_config/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
cp /var/www/html/my_config/000-default.conf /etc/apache2/sites-available/000-default.conf
cp /var/www/html/my_config/apache2.conf /etc/apache2/apache2.conf
cp /var/www/html/my_config/wp-config.php /var/www/html/
cd /etc/apache2/sites-available/
a2ensite default-ssl.conf
service apache2 restart

tail -f /dev/null
