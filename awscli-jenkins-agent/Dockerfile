FROM jenkins/inbound-agent:4.3-9-alpine

ARG version=2.0.50
LABEL AWS_CLI_VERSION=${version}

USER root
ENV AWS_CLI_VERSION=${version}
RUN apk --no-cache update && \
  apk --no-cache add tzdata jq unzip && \
  wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${version}.zip && \
  unzip awscli-exe-linux-x86_64-${version}.zip && \
  ./aws/install && \
  rm -rf awscli-exe-linux-x86_64-${version}.zip aws && \
  aws --version
USER ${user}
