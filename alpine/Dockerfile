FROM alpine:3.9.2

RUN apk --no-cache update && \
    apk --no-cache add openssh && \
    rm -rf /var/cache/apk/* && \
    rm -rf /root/.cache && \

COPY ssh_config /root/.ssh/config
RUN chmod 400 /root/.ssh/config
