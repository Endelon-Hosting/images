FROM        mcr.microsoft.com/dotnet/runtime:3.1

LABEL       author="Daniel Balk" maintainer="admin@endelon-hosting.de"

RUN         apt update \
            && apt -y install git gcc g++ ca-certificates dnsutils curl iproute2 procps \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]