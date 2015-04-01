FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y wget

RUN cd /tmp && wget -q https://grafanarel.s3.amazonaws.com/builds/grafana_2.0.0-beta1_amd64.deb

RUN cd /tmp && dpkg -i grafana_2.0.0-beta1_amd64.deb


