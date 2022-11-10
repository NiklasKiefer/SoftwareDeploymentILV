FROM debian:jessie
LABEL description="Custom Wordpress docker image for Lab3 with debian 8"


ENV DEBIAN_FRONTEND noninteractive
ENV container docker

RUN apt update
RUN apt upgrade
RUN apt install -y wget

RUN apt -y --force-yes install ca-certificates apt-transport-https
RUN apt -y --force-yes install apache2

RUN apt update
RUN apt -y install php5 php5-mysql libapache2-mod-php5


RUN apt install unzip

RUN cd /var/www/html \
    && wget https://wordpress.org/latest.zip \
    && unzip -q latest.zip \
    && chown -R www-data:www-data /var/www/html/wordpress \
    && chmod -R 755 /var/www/html/wordpress \
    && mkdir -p /var/www/html/wordpress/wp-content/uploads \
    && chown -R www-data:www-data /var/www/html/wordpress/wp-content/uploads \
    && rm latest.zip


ENV WORDPRESS_DB 'foodb'
ENV WORDPRESS_DB_USER 'user1'
ENV WORDPRESS_DB_PASS '1234'
ENV WORDPRESS_DB_HOST 'localhost:3306'

EXPOSE 80/tcp
VOLUME /var/www/html/wordpress
