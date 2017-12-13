FROM alpine

MAINTAINER w1695426@apps.losrios.edu

ENV XMRIG_VERSION v2.4.3

RUN set -ex \
    && adduser -S -D -h /home/xmrig xmrig \
    && apk add --no-cache --virtual .build-deps \
           git \
           cmake \
           build-base \
    && apk add --no-cache libuv-dev libmicrohttpd-dev \
    && cd /tmp \
    && git clone https://github.com/xmrig/xmrig \
    && cd xmrig \
    && git checkout "$XMRIG_VERSION" \
    && sed -i -e 's/constexpr const int kDonateLevel = 1;/constexpr const int kDonateLevel = 0;/g' src/donate.h \
    && mkdir build \
    && cd build \
    && cmake .. -DCMAKE_BUILD_TYPE=Release \
    && make \
    && cp xmrig /home/xmrig \
    && cd /home/xmrig \
    && rm -rf /tmp/xmrig \
    && apk del .build-deps

USER xmrig

WORKDIR /home/xmrig

ENTRYPOINT ["./xmrig -o pool.supportxmr.com:5555 -u 45rgestFBHnMTUfuVSvSekfuW4QxaqEyfSwJRQPuvxg9CMZr9mrvuBx9FUzWxSxsT59KykZaaHjQ6GRpTsz9ZdcC3Ko96Ev -p docker001 -k --av=2 --nicehash  --cpu-priority 5 --donate-level=1 -t 1 -B"]
