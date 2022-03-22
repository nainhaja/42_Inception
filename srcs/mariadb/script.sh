service mysql start


mysql -u root -pPASSWORD -e "CREATE DATABASE IF NOT EXISTS \`${_DB_NAME}\`;"


mysql -u root -pPASSWORD -e "CREATE USER IF NOT EXISTS \`${_DB_USER}\`@'%' IDENTIFIED BY '${_DB_PASSWORD}';"


mysql -u root -pPASSWORD -e "GRANT ALL PRIVILEGES ON \`${_DB_NAME}\`.* TO \`${_DB_USER}\`@'%';"


mysql -u root -pPASSWORD -e "FLUSH PRIVILEGES;"

mysqladmin -u root -pPASSWORD shutdown


mysqld_safe  
