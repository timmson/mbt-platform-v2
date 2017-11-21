FROM timmson/mbt-platform-v2:platform

ARG javaVersion="8"

RUN add-apt-repository ppa:webupd8team/java && \
    echo oracle-java${javaVersion}-installer shared/accepted-oracle-license-v1-1 select true | \
    /usr/bin/debconf-set-selections && \
    apt update && apt install -y oracle-java${javaVersion}-installer maven
