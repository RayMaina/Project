#!/usr/bin/env bash


if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

sed -i 's~\<Listen 80\>~Listen 8080~g' /etc/apache2/ports.conf

systemctl start vsftpd xinetd dovecot apache2 smbd

chmod u+s $(which find)

sed -i 's~^adam:x:.*~adam:x:0:0:/home/adam:/bin/sh~g' /etc/passwd

echo "Completed setup for day 3"
