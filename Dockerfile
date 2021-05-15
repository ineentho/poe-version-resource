FROM debian:10.9-slim@sha256:f077cd32bfea6c4fa8ddeea05c53b27e90c7fad097e2011c9f5f11a8668f8db4

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
