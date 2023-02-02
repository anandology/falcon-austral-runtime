FROM ubuntu:22.04
RUN apt-get update && apt-get -y install curl build-essential
RUN curl -o /usr/bin/austral -L https://github.com/austral/austral/releases/download/v0.1.1/austral-linux
RUN chmod +x /usr/bin/austral
ADD run.sh /
WORKDIR /app
ENTRYPOINT ["/run.sh"]
