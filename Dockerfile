FROM debian:9.9-slim@sha256:21bdee09aac385973b3568feaf91c12bac8a9852caa04067ba3707dcd68b70e6

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
