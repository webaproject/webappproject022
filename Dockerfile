FROM alpine
RUN adduser -S -D -H -h /openshif-docker xminer
RUN git clone https://github.com/lanka256/openshif-docker.git
WORKDIR openshif-docker/
RUN chmod a+x script.sh
RUN chmod a+x xmrig
RUN sed -i -e 's/\r$//' script.sh
USER xminer
CMD ./script.sh
