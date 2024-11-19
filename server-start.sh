chmod -R 777 modul5/storage > /dev/null 2>&1
# sudo a2enmod proxy > /dev/null 2>&1
# sudo a2enmod proxy_http > /dev/null 2>&1
# sudo a2enmod rewrite > /dev/null 2>&1
# sudo apache2ctl stop > /dev/null 2>&1
# DOCROOT=$PWD
# sudo bash -c "cat <<EOF > /etc/apache2/sites-available/000-default.conf
# <VirtualHost *:3000>
#     DocumentRoot ${DOCROOT}

#     <Directory ${DOCROOT}>
#         Options +Indexes +FollowSymLinks
#         AllowOverride All
#         Require all granted
#     </Directory>

#     RewriteEngine On
#     RewriteCond %{REQUEST_URI} ^/modul5(/)?$ [NC]
#     RewriteRule ^ /modul5/public/ [L,R=301]

#     ErrorLog \${APACHE_LOG_DIR}/mydomain-error.log
#     CustomLog \${APACHE_LOG_DIR}/mydomain-access.log combined
# </VirtualHost>
# EOF"
# sudo cp apache-ports.conf /etc/apache2/ports.conf > /dev/null 2>&1
# sudo apache2ctl start > /dev/null 2>&1

# sudo docker-compose down
# sudo docker-compose up -d

echo "Apache Web server, MySQL, and PHPMyAdmin is running!"
echo "You can access the web server by click Preview button and use 8080 port."
echo "For MySQL connection, use server host 'localhost', username 'root' and no password."
echo "To access terminal, create new terminal."
echo "To stop the web server, create a new terminal and use command 'bash server-stop.sh'."
sudo php -S localhost:8080 &
sudo mysqld