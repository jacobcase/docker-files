FROM ubuntu:14.04

RUN apt-get install -y wget

RUN wget -q http://repos.sensuapp.org/apt/pubkey.gpg -O- | sudo apt-key add -

RUN echo "deb     http://repos.sensuapp.org/apt sensu main" > /etc/apt/sources.list.d/sensu.list

RUN apt-get update && apt-get install -y sensu


