FROM debian:9.13-slim@sha256:66a2b17d011cbb3317296f24a72cb9cdbbb3cc05ccc487f08a5082ca4b7cedb8

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
