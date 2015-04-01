FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y software-properties-common

RUN add-apt-repository ppa:webupd8team/java && apt-get update

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java8-installer

RUN cd /tmp && wget -q https://aphyr.com/riemann/riemann_0.2.9_all.deb

RUN cd /tmp && dpkg -i riemann_0.2.9_all.deb

CMD ["riemann"]
