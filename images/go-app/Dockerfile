FROM go

ARG giturl

USER ${username}
WORKDIR /app
RUN git clone ${giturl} .
COPY . .
RUN chmod +x run.sh

CMD ["run.sh"]
