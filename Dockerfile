FROM alpine:latest

RUN apk update && apk add bash netcat-openbsd

ENV MSG="Hello HTTP!"
ENV PORT=8080

WORKDIR /srv
COPY . . 

RUN chmod +x http-hello.sh

ENTRYPOINT ["./http-hello.sh"]

