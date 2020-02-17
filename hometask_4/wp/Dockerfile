FROM wordpress:latest

MAINTAINER Oleksii Kosyiev

EXPOSE 80
COPY config /var/www/html/my_config
RUN ["chmod", "+x", "/var/www/html/my_config/ssl_config.sh"]
WORKDIR /var/www/html/
CMD /var/www/html/my_config/ssl_config.sh
