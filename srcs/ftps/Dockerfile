FROM  alpine:3.12

RUN apk update && apk upgrade
RUN apk add openssl vsftpd openrc

RUN openssl req -x509 -newkey rsa:2048 -sha256 -nodes -keyout /etc/ssl/mspyke.key \
                -out /etc/ssl/mspyke.pem -days 365 \
                -subj "/C=RF/ST=Kazan/L=Kazan/O=21_School/OU=mspyke/CN=superproject"


COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY start_ftps.sh /

RUN chmod -R 777 /etc/vsftpd/vsftpd.conf
RUN chmod 755 /start_ftps.sh

RUN mkdir -p /var/log/ftp
RUN touch /var/log/ftp/xferlog

EXPOSE 21 30

CMD ./start_ftps.sh
