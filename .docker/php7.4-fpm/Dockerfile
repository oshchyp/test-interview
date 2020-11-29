FROM php:7.4-fpm

RUN apt-get update

# php settings
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
ADD conf.ini /usr/local/etc/php/conf.d/
RUN chmod +r /usr/local/etc/php/conf.d/conf.ini

# curl for cmd
RUN apt-get install -y curl

# php extensions
