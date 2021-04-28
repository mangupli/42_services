FROM alpine:3.12

# Updating and intalling all services
RUN apk update && apk upgrade
RUN apk add influxdb

# Scripts for the start
COPY influx_start.sh .
RUN chmod +x influx_start.sh

EXPOSE 8086

CMD sh influx_start.sh