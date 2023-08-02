ARG UBUNTU_RELEASE=22.04
FROM ubuntu:${UBUNTU_RELEASE} as base

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    traceroute \
    wget \
    net-tools \
    vim \
    nano \
    tree \
    host \
    telnet \
    man-db \
    jq \
    tcpdump \
    dnsutils \
    inetutils-ping \
    postgresql-client \
    whois \
    openssh-client \
    netcat-traditional \
    emacs-nox \
 && rm -rf /var/lib/apt/lists/*
