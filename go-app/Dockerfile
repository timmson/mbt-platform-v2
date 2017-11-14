FROM go

ARG giturl

USER ${username}
RUN git clone ${giturl} .
COPY . .
RUN chmod +x run.sh

CMD ["/app/run.sh"]
