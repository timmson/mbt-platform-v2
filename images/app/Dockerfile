FROM platform

ARG SERVICE_USER="user"

# Add user account with sudo privileges
RUN useradd ${SERVICE_USER} -s /bin/bash -G sudo -md /home/${SERVICE_USER} && \
    sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers