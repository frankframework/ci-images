#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1

docker stop iaf-test-db-db2
docker container rm iaf-test-db-db2
docker image prune --force
docker volume prune --force

docker build -t iaf-test-db-db2 .
