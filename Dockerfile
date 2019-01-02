FROM ubuntu:latest

USER root

ARG HTTP_PROXY
ENV HTTP_PROXY=$HTTP_PROXY
ENV HTTPS_PROXY=$HTTP_PROXY
ENV http_proxy=$HTTP_PROXY
ENV https_proxy=$HTTP_PROXY

ARG NO_PROXY
ENV no_proxy=$NO_PROXY
ENV NO_PROXY=$NO_PROXY

RUN apt-get update
RUN apt-get install -y curl cron

COPY . /app
RUN chmod +x /app/daily_toto.sh
RUN crontab /app/crontab_entry

ARG ROCKET_CHAT_URL
RUN test -n "$ROCKET_CHAT_URL"
RUN sed -i "s|ROCKET_CHAT_URL|${ROCKET_CHAT_URL}|g" /app/daily_toto.sh

CMD cron -f
