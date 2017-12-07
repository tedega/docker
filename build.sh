#!/bin/sh
cat ~/.ssh/id_rsa.pub >> service/sshkeys
chmod 644 service/sshkeys
docker-compose build
rm service/sshkeys
