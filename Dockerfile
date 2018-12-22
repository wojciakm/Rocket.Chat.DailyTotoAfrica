FROM ubuntu:latest

USER root

RUN apt-get update
RUN apt-get install -y curl cron

COPY . /app
RUN chmod +x /app/daily_toto.sh
RUN crontab /app/crontab_entry

ARG ROCKET_CHAT_URL=http://localhost/hooks/eBTZchbiP8P2XoCBH/2iMpDDzKH4Q3LqxsEoCCJJX2f6dghGv3KTDzExSxRD3uGsb2

RUN sed -i "s|ROCKET_CHAT_URL|${ROCKET_CHAT_URL}|g" /app/daily_toto.sh

CMD cron -f
