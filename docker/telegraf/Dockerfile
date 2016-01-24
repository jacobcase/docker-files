FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y curl

RUN curl -sS -o telegraf.deb http://get.influxdb.org/telegraf/telegraf_0.10.0-1_amd64.deb

RUN dpkg -i telegraf.deb

CMD ["telegraf", "-config", "/telegraf.toml"]
