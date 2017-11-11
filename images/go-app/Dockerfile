FROM go

ARG giturl

USER ${username}
#Temp
WORKDIR /app

RUN git clone ${giturl} .

CMD ["/app/run.sh"]
