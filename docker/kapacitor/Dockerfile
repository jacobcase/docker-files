FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y curl

RUN curl -sS -o kapacitor.deb https://s3.amazonaws.com/influxdb/kapacitor_0.10.0-1_amd64.deb

RUN dpkg -i kapacitor.deb

EXPOSE 9092

CMD ["kapacitord", "-config", "/kapacitor.toml"]
