FROM debian:stable
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y texlive \
  && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-1-amd64.deb

RUN dpkg -i pandoc-2.3.1-1-amd64.deb
WORKDIR /source
