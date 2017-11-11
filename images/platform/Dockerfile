FROM ubuntu:xenial
MAINTAINER Krotov Artem <timmson666@mail.ru>

ARG TIME_ZOME="Europe/Moscow"
ARG SERVICE_USER="user"

RUN apt update && apt install -y apt-transport-https

COPY sources.list /etc/apt/

# Install essentials
RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y software-properties-common python-software-properties sudo vim cron tzdata wget && \
    apt autoremove && \
    apt clean

# Change time zone
RUN rm -rf /etc/localtime && \
    ln -s /usr/share/zoneinfo/${TIME_ZOME} /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

# Add user account with sudo privileges
RUN useradd ${SERVICE_USER} -s /bin/bash -G sudo -md /home/${SERVICE_USER} && \
    sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
