FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates  \
    netbase \
    wget \
    curl \
    && apt-get autoremove -y \
    && apt-get autoclean -y