FROM go

ARG APP_NAME="mbt-telegram-gw-go"
ARG GIT_URL="https://https://github.com/timmson/mbt-telegram-gw-go.git"

WORKDIR /home/${SERVICE_USER}
USER ${SERVICE_USER}

RUN git clone ${GIT_URL} .