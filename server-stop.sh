# sudo docker-compose down
sudo lsof -ti :3306 -ti :8080 | xargs sudo kill -9
echo "Apache Web server, MySQL, and PHPMyAdmin is now stopped!"
