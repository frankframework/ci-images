#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1

docker run -itd --name iaf-test-db-db2 --env-file env_list.txt --privileged=true -p 50000:50000 --restart unless-stopped iaf-test-db-db2 -d
