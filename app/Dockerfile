FROM timmson/mbt-platform-v2:platform

ARG username="user"

# Add user account with sudo privileges
RUN useradd ${username} -s /bin/bash -G sudo -md /home/${username} && \
    sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

RUN mkdir /app && chown ${username}:${username} /app

WORKDIR /app