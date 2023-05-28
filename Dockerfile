FROM debian:11.7-slim@sha256:7606bef5684b393434f06a50a3d1a09808fee5a0240d37da5d181b1b121e7637

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
