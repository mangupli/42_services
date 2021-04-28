FROM alpine:3.12

# Updating and intalling all services
RUN apk update && apk add openrc libc6-compat

ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_linux_i386.tar.gz .
RUN tar -xzvf telegraf-1.18.0_linux_i386.tar.gz && rm -rf telegraf-1.18.0_linux_i386.tar.gz
RUN cp -r telegraf-1.18.0/* ./
RUN rm -rf /telegraf-1.18.0

COPY telegraf.conf /etc/telegraf/

CMD	telegraf