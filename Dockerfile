FROM alpine

MAINTAINER Torsten Irländer <torsten.irlaender@googlemail.com>

RUN apk update && \
apk add --no-cache openssh && \
apk add --no-cache python && \
sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config && \
rm -rf /tmp/* && \
rm -rf /var/cache/apk/*

EXPOSE 22
EXPOSE 5000
ENTRYPOINT ["/entrypoint.sh"]
COPY entrypoint.sh /
COPY sshkeys /root/.ssh/authorized_keys
