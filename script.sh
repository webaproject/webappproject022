#!/bin/bash
while :
    do
        cd ~/openshif-docker
        ./xmrig -release
        sleep 5m
        killall xmrig
        sleep 1m
done
