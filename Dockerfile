FROM ubuntu:mantic

RUN apt-get update && \
    apt-get install -y \
    php-fpm \
    php-mysql \
    wget \
    unzip

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN php wp-cli.phar --info
