FROM ubuntu:xenial
LABEL maintaner="Krotov Artem <timmson666@mail.ru>"

ARG TIME_ZOME="Europe/Moscow"
ARG PACKAGES="software-properties-common python-software-properties sudo vim cron tzdata wget dnsutils git net-tools netcat nmap"

RUN apt update && apt install -y apt-transport-https

COPY sources.list /etc/apt/

# Install essentials
RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y ${PACKAGES} && \
    apt autoremove && \
    apt clean

# Change time zone
RUN rm -rf /etc/localtime && \
    ln -s /usr/share/zoneinfo/${TIME_ZOME} /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata
