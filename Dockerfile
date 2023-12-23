FROM alpine:latest

ENV APP vim

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

RUN apk update

RUN apk add $APP

RUN adduser -S $USERNAME

ENV HOME /home/$USERNAME

USER $USERNAME

CMD "${APP}"
