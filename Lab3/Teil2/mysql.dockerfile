
FROM debian:jessie
LABEL description="Custom MySQL docker image for Lab3 with debian 8"

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV container docker

RUN apt update
RUN apt upgrade
RUN apt install -y wget
RUN wget http://repo.mysql.com/mysql-apt-config_0.8.9-1_all.deb
RUN apt install -y lsb-release
RUN dpkg -i mysql-apt-config_0.8.9-1_all.deb
RUN apt update
RUN apt install -y --force-yes mysql-server


RUN sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf

RUN service mysql restart \
    && echo "UPDATE mysql.user SET authentication_string = PASSWORD('mysql_root') WHERE User = 'root';" | mysql -uroot \
    && echo "DROP USER IF EXISTS ''@'localhost';" | mysql -uroot \
    && echo "DROP USER IF EXISTS ''@'$(hostname)';" | mysql -uroot \
    && echo "DROP DATABASE IF EXISTS test;" | mysql -uroot \
    && echo "FLUSH PRIVILEGES;" | mysql -uroot \
    && service mysql stop

VOLUME ["/var/lib/mysql/", "/etc/mysql"]

EXPOSE 3306/tcp

LABEL version="1.0"
LABEL description="the actual MySQL server"

ENV MYSQL_DB 'foodb'
ENV MYSQL_USER 'user1'
ENV MYSQL_PASS '1234'
