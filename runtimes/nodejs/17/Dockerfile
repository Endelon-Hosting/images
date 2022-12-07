FROM        node:17-bullseye-slim

LABEL       author="Marcel Baumgartner" maintainer="admin@endelon-hosting.de"

RUN         apt update \
            && apt -y install iproute2 git ca-certificates dnsutils zip tar curl \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]