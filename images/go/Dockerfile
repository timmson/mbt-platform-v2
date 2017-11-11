FROM app

ARG giturl

RUN add-apt-repository ppa:longsleep/golang-backports && \
        sudo apt-get update && \
        sudo apt-get install -y golang-go

WORKDIR /app
USER ${username}

RUN git clone ${giturl} .
