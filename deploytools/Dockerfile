FROM alpine:3.18

# Install dependencies
RUN apk add --no-cache \
    bash \
    curl \
    git \
    jq \
    openssh-client \
    gettext \
    kubectl@testing \
    docker-cli \    
    && rm -rf /var/cache/apk/*
