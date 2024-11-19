FROM phpmyadmin:5.2.1

RUN apt-get update && \
    docker-php-ext-install pdo pdo_mysql mysqli && \
    apt-get clean && rm -rf /var/lib/apt/lists/*