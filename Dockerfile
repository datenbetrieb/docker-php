# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:jessie
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

RUN apt-get update && \
    apt-get install -y php5-fpm php5-cli php5-gd php5-json php5-ldap php5-mcrypt php5-sqlite php5-xdebug php5-&& \
    curl -sS https://getcomposer.org/installer | php && \
    rm -rf /var/lib/apt/lists/*

COPY php-fpm.conf /etc/php5/fpm/php-fpm

EXPOSE 9000

#ENTRYPOINT ["php5-fpm"]
CMD ["php5-fpm", "-F"]
