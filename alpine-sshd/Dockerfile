FROM alpine:3.8

COPY file/ /tmp/

ENV ROOT_PASSWORD root

RUN \mv /tmp/repositories /etc/apk/repositories \
    && apk update && apk add openssh-server --no-cache \
    && mv /tmp/ssh* /etc/ssh/ \
    && chmod 600 /etc/ssh/* && chmod 644 /etc/ssh/*.pub \
    && echo "root:${ROOT_PASSWORD}" | chpasswd \
    && rm -rf /var/cache/apk/* /tmp/*

COPY start.sh /usr/local/bin

EXPOSE 22

CMD ["start.sh"]
