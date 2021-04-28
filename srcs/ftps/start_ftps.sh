#!/bin/sh

adduser -D admin
echo "admin:password" | chpasswd
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf