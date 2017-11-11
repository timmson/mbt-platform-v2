FROM node

ARG giturl

USER ${username}
WORKDIR /app
RUN git clone ${giturl} . && npm i
COPY . .
RUN chmod +x run.sh

CMD ["run.sh"]
