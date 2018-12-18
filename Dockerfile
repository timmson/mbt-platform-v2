FROM ubuntu:bionic
LABEL maintaner="Krotov Artem <timmson666@mail.ru>"

ARG timezone="Europe/Moscow"
ARG packages="software-properties-common python-software-properties sudo vim cron tzdata wget dnsutils git net-tools netcat nmap"

RUN apt update && apt install -y apt-transport-https

COPY sources.list /etc/apt/

# Install essentials
RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y ${packages} && \
    apt autoremove && \
    apt clean

# Change time zone
RUN timedatectl set-timezone${timezone}
