#!/bin/bash
echo "GRANT XA_RECOVER_ADMIN ON *.* TO '$MYSQL_USER'@'%'; FLUSH PRIVILEGES;" > /docker-entrypoint-initdb.d/init.sql