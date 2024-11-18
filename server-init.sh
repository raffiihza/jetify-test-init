sudo apt update
sudo apt install -y docker-compose php8.3-mysql php8.3-xml
mkdir -p modul5/storage > /dev/null 2>&1
chmod -R 777 modul5/storage > /dev/null 2>&1
echo "Environment installation completed!"