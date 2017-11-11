FROM ubuntu
MAINTAINER Krotov Artem <timmson666@mail.ru>

ARG SERVICE_USER=user

# Install essentials
RUN apt update && \
    apt dist-upgrade -y && \
    apt install -y apt-transport-https python sudo supervisor vim cron tzdata && \
    apt autoremove && \
    apt clean

# Create required directories
RUN mkdir -p /var/log/supervisor

# Copy supervisord.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add user account with sudo privileges
RUN useradd ${SERVICE_USER} -s /bin/bash -G sudo -md /home/${SERVICE_USER} && \
    sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

# Run supervisor
CMD ["/usr/bin/supervisord"]
