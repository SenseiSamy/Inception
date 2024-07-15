mkdir -p /usr/share/webapps/
cd /usr/share/webapps/
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
chown -R /usr/share/webapps/
ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress