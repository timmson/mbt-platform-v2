FROM timmson/mbt-platform-v2:platform

ARG nodeVersion="18.x"

RUN wget -qO - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
        add-apt-repository 'deb https://deb.nodesource.com/node_'${nodeVersion}' '$(lsb_release -cs)' main' && \
        apt update && apt install -y nodejs
