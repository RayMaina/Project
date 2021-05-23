#!/usr/bin/env bash


if [ "$EUID" -ne 0 ]
then
    echo "Please run this script with sudo"
    exit
fi

cp ~/Documents/day_one_resources/user.hashes /
cp ~/Documents/day_one_resources/str.sh /tmp

rm /tmp/rev_shell.sh /tmp
rm /tmp/listen.sh
rm /tmp/a9xk.sh

chown -R jack:jack /user.hashes /tmp/str.sh
chmod -R 0644 /tmp/str.sh /user.hashes
