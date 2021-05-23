#!/usr/bin/env bash


if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi


[ ! -d /home/sysadmin/research ] && mkdir /home/sysadmin/research
echo "created ~/research directory"

cp -R /home/instructor/Documents/research/* /home/sysadmin/research
echo "copied needed files to ~/research"

chown -R sysadmin:sysadmin /home/sysadmin/research/
chmod -R 0744 /home/sysadmin/research/
echo "set owner and permissions"


cp /home/instructor/research/motd /etc/


apt -y install john chkrootkit lynis &> /dev/null

echo "Completed setup for day 2"
