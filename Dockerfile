FROM debian:9.7-slim@sha256:eb989c10e06a7f1af87dcf2e16fea12cb1368a594d0de85da32af871abefe4f1

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
