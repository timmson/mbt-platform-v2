FROM go

ARG giturl

USER ${username}
#Temp
WORKDIR /app

COPY . .

RUN git clone ${giturl} .

CMD ["/app/run.sh"]
