FROM alpine:3.19

# Install dependencies
RUN apk add --no-cache \
    bash \
    curl \
    git \
    jq \
    openssh-client \
    gettext \
    docker-cli \
    go \
    tar \
    && rm -rf /var/cache/apk/*