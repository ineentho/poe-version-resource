FROM debian:9.9-slim@sha256:105032f50e173e95a84b86a5864ddc0c26c22ce3324b3dab98741601af79aaa4

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
