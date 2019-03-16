FROM debian:9.8-slim

RUN apt-get update && \
    apt-get install -y netcat && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
