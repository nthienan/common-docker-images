FROM jenkins/jnlp-slave:3.40-1-jdk11

RUN add-apt-repository -y ppa:projectatomic/ppa && \
    apt-get update && \
    apt-get install -y podman podman-docker && \
    rm -rf /var/cache/apt/* /root/.cache