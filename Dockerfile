FROM debian:12.1-slim@sha256:89468107e4c2b9fdea2f15fc582bf92c25aa4296a661ca0202f7ea2f4fc3f48c

RUN apt-get update && \
    apt-get install -y netcat jq && \
    rm -rf /var/lib/apt/lists/*

COPY check /opt/resource/check
COPY in /opt/resource/in
