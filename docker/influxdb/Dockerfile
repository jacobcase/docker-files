FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y curl

RUN curl -sS -o influxdb.deb https://s3.amazonaws.com/influxdb/influxdb_0.9.6.1_amd64.deb

RUN dpkg -i influxdb.deb

EXPOSE 8086 8083

CMD ["influxd", "run", "-config", "/influxdb.toml"]
