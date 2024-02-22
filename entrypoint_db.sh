#!/bin/bash

mysqld --user mysql &

# Wait for MySQL to be ready
while ! mysqladmin ping -hlocalhost --silent; do
    sleep 1
done

MYSQL_CMD="mysql -u root"

$MYSQL_CMD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"

$MYSQL_CMD -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"

$MYSQL_CMD -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"

$MYSQL_CMD -e "FLUSH PRIVILEGES;"

echo "Database '$MYSQL_DATABASE' and user '$MYSQL_USER' configured successfully."

tail -f /dev/null
