#!/bin/sh

echo "root:${ROOT_PASSWORD}" | chpasswd \

/usr/sbin/sshd -D
