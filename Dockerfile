FROM debian:9.9-slim@sha256:515f78ca65a8d5897717c2905991de33910e0cdc0d9e7952c65006d7690dca58

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
