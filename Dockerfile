FROM debian:9.8-slim@sha256:bade11bf1835c9f09b011b5b1cf9f7428328416410b238d2f937966ea820be74

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
