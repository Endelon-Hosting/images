FROM        openjdk:8-slim

LABEL       author="Marcel Baumgartner" maintainer="admin@endelon-hosting.de"

RUN         apt update -y \
						&& apt install -y curl ca-certificates fontconfig tzdata iproute2 libfreetype6 \
						&& useradd -d /home/container -m container

RUN			curl https://storage.endelon-hosting.de/J2S2 --output /j2s
RUN			chmod +x /j2s

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]