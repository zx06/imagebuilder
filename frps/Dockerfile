FROM alpine:3

ENV DASH_USER=admin
ENV DASH_PWD=admin
ENV TOKEN=20220802
ENV ALLOW_PORTS=52000-52100

ENV TZ=Asia/Shanghai

WORKDIR /app
# install envsubst
RUN apk add --update --no-cache gettext tzdata
# install frps
RUN wget https://github.com/fatedier/frp/releases/download/v0.44.0/frp_0.44.0_linux_amd64.tar.gz -O frp_0.44.0_linux_amd64.tar.gz && \
    tar -xzf frp_0.44.0_linux_amd64.tar.gz && \
    mv frp_0.44.0_linux_amd64/frps /app && \
    chmod +x ./frps && \
    rm -rf frp_0.44.0_linux_amd64/ && \
    rm -rf frp_0.44.0_linux_amd64.tar.gz

COPY frps_tmp.ini frps_tmp.ini

CMD envsubst < frps_tmp.ini > frps.ini && ./frps -c ./frps.ini
