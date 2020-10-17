FROM alpine:3.12.0

ARG version=v1.3.1
LABEL VERSION=${version}
ENV VERSION=${version}

RUN apk --no-cache add ca-certificates curl jq wget && \
  wget https://github.com/teralytics/prometheus-ecs-discovery/releases/download/${version}/prometheus-ecs-discovery-linux-amd64 && \
  mv prometheus-ecs-discovery-linux-amd64 /usr/bin/prometheus-ecs-discovery && \
  chmod +x /usr/bin/prometheus-ecs-discovery  && \
  mkdir -p /var/prometheus-ecs-discovery

WORKDIR /var/prometheus-ecs-discovery
VOLUME /var/prometheus-ecs-discovery

ENTRYPOINT ["prometheus-ecs-discovery"]
