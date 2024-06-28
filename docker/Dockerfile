FROM debian:stretch
LABEL maintainer="GRCoin Developers <dev@grcoin.net>"
LABEL description="Dockerised GRCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
