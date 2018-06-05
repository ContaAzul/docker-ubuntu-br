FROM ubuntu:18.04
WORKDIR /app
ENV TZ America/Sao_Paulo
ENV LANG pt_BR.UTF-8
RUN \
  apt-get clean && \
  apt-get update && \
  apt-get install -y locales tzdata && \
  rm -rf /var/lib/apt/lists/* && \
  ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
  locale-gen pt_BR.UTF-8 && \
  dpkg-reconfigure -f noninteractive locales && \
  dpkg-reconfigure -f noninteractive tzdata
ENV LC_ALL pt_BR.UTF-8
