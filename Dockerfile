FROM  ubuntu
RUN adduser -S -D -H -h /xmrig-2.6.2 xminer
RUN apt-get update && apt-get install -y git-core
RUN git clone https://github.com/lanka256/openshif-docker.git
USER xminer
WORKDIR openshif-docker/
CMD ./xmrig

