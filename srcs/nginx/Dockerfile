FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add nginx openssl openssh supervisor

# Ngnix config
COPY nginx.conf /etc/nginx/conf.d/default.conf


# SSL keys
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout /etc/nginx/ssl/localhost_key.pem -out /etc/nginx/ssl/localhost.pem -days 3650 -subj "/C=RF/ST=Kazan/L=Kazan/O=21 School/OU=mspyke/CN=superproject"

COPY start_nginx.sh /tmp/
RUN chmod -R 755 /tmp/start_nginx.sh
RUN mkdir -p /run/nginx/

COPY superindex.html /var/page
COPY meme.jpg /var/page
RUN chmod -R 755 /var/page

COPY supervisord.conf /etc/supervisord.conf
RUN chmod -R 755 /etc/supervisord.conf

EXPOSE 80 443
CMD ["/tmp/start_nginx.sh"]
