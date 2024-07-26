FROM ubuntu:latest

ENV COMPOSER_ALLOW_SUPERUSER=1

WORKDIR /root

COPY install.sh /root/install.sh

RUN /root/install.sh
RUN rm -f /root/install.sh

WORKDIR /

COPY start.sh /start.sh

EXPOSE 80

ENTRYPOINT ["/start.sh"]
