FROM cruizba/ubuntu-dind
RUN apt update && apt install -y git-all && curl -fsSL https://code-server.dev/install.sh | sh
EXPOSE 8080
VOLUME /root/.local
VOLUME /root/.config
VOLUME /root/project
ENTRYPOINT code-server