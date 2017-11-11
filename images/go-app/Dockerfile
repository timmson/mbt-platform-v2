FROM go

ARG giturl

USER ${username}
#Temp
WORKDIR /app

RUN git clone ${giturl} .

COPY . .

CMD ["/app/run.sh"]
