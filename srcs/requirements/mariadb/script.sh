#!/bin/sh
mkdir -p /run/mysqld/
chown -R mysql:mysql /run/mysqld
chown -R mysql:mysql /var/lib/mysql
echo "Launching install script"
mariadb-install-db --user mysql
echo "Creating wordpress db and admin user"
mariadbd --bootstrap --user mysql << EOF
FLUSH PRIVILEGES;
CREATE DATABASE $MARIADB_DBNAME;
CREATE USER "$MARIADB_USER"@'%' IDENTIFIED BY "$MARIADB_PASSWORD";
GRANT ALL PRIVILEGES ON *.* TO "$MARIADB_USER"@'%' IDENTIFIED BY "$MARIADB_PASSWORD";
FLUSH PRIVILEGES;
exit
EOF
echo "Launching mariadbd server"
exec mariadbd --user mysql