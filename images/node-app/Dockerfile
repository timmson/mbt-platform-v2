FROM node

ARG giturl

USER ${username}
RUN git clone ${giturl} . && npm i
COPY . .
RUN chmod +x run.sh

CMD ["/app/run.sh"]
