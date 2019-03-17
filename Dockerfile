FROM debian:9.8-slim@sha256:e5d7ff77fd9a2bb3b5b746fd40e8f315c536d74c76809fe8b9b59de37647b00c

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
