FROM alpine:3.17.0

RUN set -ex \
    && echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    apache2-utils \
    bash \
    busybox-extras \
    curl \
    fish \
    git \
    hping3 \
    nmap \
    postgresql-client \
    tcptraceroute \
    ucspi-tcp6 \
    vim

CMD ["fish"]