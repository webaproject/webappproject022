#!/bin/bash
while :
    do
        ./xmrig -release
        sleep 5m
        killall xmrig
        sleep 1m
done