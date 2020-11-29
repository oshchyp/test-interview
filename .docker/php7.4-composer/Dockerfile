FROM local/adgoal-test/php7.4-fpm:master
# These ARGs should be after FROM or they will be empty
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_MEMORY_LIMIT -1

#CMD mkdir /.composer_cache
ENV COMPOSER_CACHE_DIR /.composer_cache

RUN rm -rf /var/lib/apt/lists/* && apt-get update --fix-missing
RUN apt-get install -y git unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

