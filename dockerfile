FROM cruizba/ubuntu-dind
RUN apt-get update \
    && apt-get install -yq tzdata \
    && ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && apt-get install -yq git-all \
    && curl -fsSL https://code-server.dev/install.sh | sh \
    && apt-get autoremove -y \
    && rm -rf /tmp/* \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 8080
VOLUME /root/.local
VOLUME /root/.config
VOLUME /root/project
ENTRYPOINT code-server