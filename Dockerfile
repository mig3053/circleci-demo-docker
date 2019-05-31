FROM alpine:3.5

ADD ./workdir/contacts /usr/bin/contacts
ADD ./db/migrations /migrations

RUN apk add --no-cache mysql-client

ENTRYPOINT contacts
