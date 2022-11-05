FROM mysql
LABEL description="Custom MySQL docker image for Lab3"

ENV MYSQL_DATABASE users

COPY ./init-scripts/ /docker-entrypoint-initdb.d/
