FROM jenkins/inbound-agent:4.3-9-alpine

ARG version=0.11.0

USER root
ENV TRIVY_VERSION=${version}
RUN apk --no-cache update && \
  apk --no-cache add tzdata jq && \
  wget https://github.com/aquasecurity/trivy/releases/download/v${version}/trivy_${version}_Linux-64bit.tar.gz && \
  mkdir trivy && \
  tar -xvzf trivy_0.11.0_Linux-64bit.tar.gz --directory trivy && \
  mv trivy/trivy /usr/bin/ && \
  rm -rf trivy_${version}_Linux-64bit.tar.gz trivy && \
  trivy --version
USER ${user}
