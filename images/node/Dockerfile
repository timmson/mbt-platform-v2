FROM platform
LABEL maintaner="Krotov Artem <timmson666@mail.ru>"

ARG NODE_VERSION="8.x"

RUN wget -qO - https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
        add-apt-repository 'deb https://deb.nodesource.com/node_'${NODE_VERSION}' '$(lsb_release -cs)' main' && \
        apt install -y nodejs
