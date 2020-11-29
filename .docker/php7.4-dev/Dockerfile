FROM local/adgoal-test/php7.4-composer:master
# These ARGs should be after FROM or they will be empty

RUN pecl install xdebug-3.0.0
RUN docker-php-ext-enable xdebug
RUN pecl install ast
RUN docker-php-ext-enable ast

RUN rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

WORKDIR /app
