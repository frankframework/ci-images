#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1

docker-compose down --volumes --remove-orphans
docker image prune --force
docker volume prune --force

docker build -t iaf-test-db-mariadb .
