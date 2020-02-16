FROM wordpress:latest

MAINTAINER Oleksii Kosyiev

#ENV WORDPRESS_DB_HOST localhost:3306
#ENV WORDPRESS_DB_USER wordpress
#ENV WORDPRESS_DB_PASSWORD 123456
#ENV WORDPRESS_DB_NAME wordpress

EXPOSE 80
COPY config /var/www/html/my_config
RUN ["chmod", "+x", "/var/www/html/my_config/ssl_config.sh"]
WORKDIR /var/www/html/
CMD /var/www/html/my_config/ssl_config.sh
