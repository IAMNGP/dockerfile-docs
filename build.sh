#!/bin/bash
mkdir -p /root/dappbox/teedy
docker build -t dappbox:01 .
sleep 3
docker run --rm --name dAppBox -d -p 8081:8080 -v /root/dappbox/teedy:/data dappbox:01
echo done
