#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1
WORKING_DIR="$(pwd)"

for DIR in */ ; do
  echo "$WORKING_DIR/$DIR"
  "$WORKING_DIR/$DIR/start.sh"
done
