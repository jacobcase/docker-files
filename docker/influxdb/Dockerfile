FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y wget

RUN cd /tmp && wget -q https://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb

RUN cd /tmp && dpkg -i influxdb_latest_amd64.deb

EXPOSE 8083 8086 8090 8099

CMD ["influxdb", "-config=/opt/influxdb/shared/config.toml"]
