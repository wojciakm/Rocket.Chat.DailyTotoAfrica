FROM alpine:latest
RUN apk add --no-cache curl

COPY . /app

ENV ROCKET_CHAT_URL=http://localhost/hooks/eBTZchbiP8P2XoCBH/2iMpDDzKH4Q3LqxsEoCCJJX2f6dghGv3KTDzExSxRD3uGsb2

CMD ["/app/daily_toto.ash"]
#CMD ["cron", "-f"]
