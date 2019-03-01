FROM php:7.1-apache
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
RUN apt-get update && apt-get install -y \
        gcc make autoconf libc-dev pkg-config \
        libmcrypt-dev \
        php7.1-curl php7.1-intl php7.1-gd php7.1-dom php7.1-mcrypt php7.1-iconv php7.1-xsl php7.1-mbstring php7.1-ctype   php7.1-zip php7.1-pdo php7.1-xml php7.1-bz2 php7.1-calendar php7.1-exif php7.1-fileinfo php7.1-json php7.1-mysqli php7.1-mysql php7.1-posix php7.1-tokenizer php7.1-xmlwriter php7.1-xmlreader php7.1-phar php7.1-soap php7.1-mysql php7.1-fpm php7.1-bcmath \
    && pecl install mcrypt-1.0.0 \
    && docker-php-ext-install -j$(nproc) pdo_mysql