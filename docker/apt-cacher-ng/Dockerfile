# based off of official example

FROM ubuntu:14.04

VOLUME ["/var/cache/apt-cacher-ng"]
RUN apt-get update && apt-get install -y apt-cacher-ng

EXPOSE 3142

CMD /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*
