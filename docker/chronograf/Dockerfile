FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y curl

RUN curl -sS -o chronograf.deb https://s3.amazonaws.com/get.influxdb.org/chronograf/chronograf_0.4.0_amd64.deb

RUN dpkg -i chronograf.deb

RUN ln -s /opt/chronograf/chronograf /usr/local/bin/chronograf

CMD ["chronograf", "-config", "/chronograf.toml"]
