#!/bin/sh
# mkdir -p /usr/share/wordpress/
# cd /usr/share/wordpress/
# wget https://wordpress.org/latest.tar.gz
# tar -xzvf latest.tar.gz
# rm latest.tar.gz
mv /usr/bin/php82 /usr/bin/php
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli.phar
mkdir -p /run/php /var/www/html
echo "downloading wordpress"
wp-cli.phar core download
echo "creating wordpress config"
wp-cli.phar config create --dbname=$MARIADB_DBNAME --dbuser=$MARIADB_USER --dbpass=$MARIADB_PASSWORD --dbhost=mariadb
echo "installing wordpress config"
wp-cli.phar core install --url=localhost --title=Inception --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL
exec php-fpm82 -F