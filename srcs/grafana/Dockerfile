FROM alpine:3.12

# Updating and intalling all services

RUN apk update && apk upgrade
RUN apk add libc6-compat vim

ADD https://dl.grafana.com/oss/release/grafana-7.4.1.linux-amd64.tar.gz .
RUN tar -zxvf grafana-7.4.1.linux-amd64.tar.gz && rm grafana-7.4.1.linux-amd64.tar.gz
RUN mv grafana-7.4.1 grafana

# Scripts and database for the setting

COPY grafana_start.sh .
COPY grafana.db /grafana/data/grafana.db

EXPOSE 3000

CMD sh grafana_start.sh