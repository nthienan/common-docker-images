FROM jenkins/jnlp-slave:3.40-1-jdk11

USER root
RUN apt-get update && \
    apt-get install -y software-properties-common uidmap && \
    add-apt-repository -y ppa:projectatomic/ppa
USER ${USER}