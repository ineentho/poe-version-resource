FROM debian:9.13-slim@sha256:828b649e84b713d1b11a1bcf88e832625e99d74aecfeeb5bec1b0846bb40dce1

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
