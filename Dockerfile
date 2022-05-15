FROM debian:9.13-slim@sha256:4581562d3a03f936e35670fa28063e83e6f7c1640402ce5e433724458244fd39

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
