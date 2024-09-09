#!/bin/sh
mkdir -p /run/mysqld/
chown -R mysql:mysql /run/mysqld
chown -R mysql:mysql /var/lib/mysql
echo "Launching install script"
mariadb-install-db
# echo "Starting mariadb service"
# service mariadb start
echo "Creating wordpress db and admin user"
mariadbd --bootstrap << EOF
CREATE DATABASE $MARIADB_DBNAME;
GRANT ALL PRIVILEGES ON $MARIADB_DBNAME.* TO "$MARIADB_USER"@"localhost" IDENTIFIED BY "$MARIADB_PASSWORD";
FLUSH PRIVILEGES;
exit
EOF
echo "Launching mariadbd server"
exec mariadbd --user mysql