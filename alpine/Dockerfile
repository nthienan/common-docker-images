FROM alpine:3.10.0

RUN export http_proxy=http://192.168.137.140:8080 && \
    export https_proxy=http://192.168.137.140:8080 && \
    apk --no-cache update && \
    apk --no-cache add tzdata rsync openssh && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache && \
    unset http_proxy && \
    unset https_proxy

COPY ssh_config /root/.ssh/config
RUN chmod 400 /root/.ssh/config
