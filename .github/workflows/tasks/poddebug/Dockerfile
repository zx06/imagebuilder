FROM golang:1.22

ARG CRICTL_VERSION="v1.31.1"

WORKDIR /root

RUN apt update -qq && \
    apt install -qq -y \
    ca-certificates \
    software-properties-common \
    httping \
    vim \
    curl \
    wget \
    git \
    jq \
    unzip \
    zip \
    netcat-traditional \
    iputils-ping \
    iproute2 \
    net-tools \
    tcpdump \
    telnet \
    nmap \
    traceroute \
    tcpflow \
    tcpdump \
    tshark \
    tcpflow && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install dlv
RUN go install github.com/go-delve/delve/cmd/dlv@latest

# Install crictl
RUN wget https://github.com/kubernetes-sigs/cri-tools/releases/download/${CRICTL_VERSION}/crictl-${CRICTL_VERSION}-linux-amd64.tar.gz && \
    tar zxvf crictl-${CRICTL_VERSION}-linux-amd64.tar.gz -C /usr/local/bin && \
    rm -f crictl-${CRICTL_VERSION}-linux-amd64.tar.gz

COPY --chmod=755 attach.sh /root/attach.sh

CMD [ "sleep", "infinity" ]