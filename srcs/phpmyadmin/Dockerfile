FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add nginx supervisor vim

# Scripts for starting and access rights for them
COPY ./srcs/start_admin.sh /tmp/
COPY ./srcs/supervisord.conf /etc/supervisord.conf
RUN chmod +x /tmp/start_admin.sh
RUN chmod +x /etc/supervisord.conf

# Install php for phpmyadmin
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-iconv php7-mysqli
RUN apk add php7-zlib php7-curl php7-mbstring php7-json php7-session

# Ngnix config
COPY ./srcs/nginx.conf /etc/nginx/conf.d/default.conf

# phpmyadmin configs
RUN mkdir var/www/phpmyadmin
COPY ./srcs/phpmyadmin/* /var/www/phpmyadmin/
COPY ./srcs/config.inc.php /var/www/phpmyadmin/

# Alpine stuff
RUN mkdir -p /run/nginx
RUN mkdir /run/openrc
RUN touch /run/openrc/softlevel

EXPOSE 5000
CMD ["/tmp/start_admin.sh"]

