FROM jenkins/jnlp-slave:3.40-1-jdk11

USER root
RUN . /etc/os-release && \
    echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list && \
    wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O- | sudo apt-key add - && \
    apt-get update -qq && \
    apt-get -qq -y install podman podman-docker && \
    rm -rf /var/cache/apt/* /root/.cache
USER ${USER}