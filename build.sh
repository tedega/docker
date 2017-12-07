#!/bin/sh
cat ~/.ssh/id_rsa.pub >> sshkeys
chmod 644 sshkeys
docker build -t tedega:latest .
rm sshkeys
