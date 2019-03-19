FROM python:3.5-alpine3.8

LABEL author example@mail.com

RUN echo "http://mirrors.aliyun.com/alpine/v3.8/main" > /etc/apk/repositories \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && pip3 install \
        --index-url http://mirrors.aliyun.com/pypi/simple \
        --trusted-host mirrors.aliyun.com \
        --no-cache-dir \
        flask==1.0.2 \
    && apk del tzdata \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache \
    && rm -rf /tmp/*

WORKDIR /

CMD ["/bin/sh"]
