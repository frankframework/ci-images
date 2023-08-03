#!/usr/bin/env bash

WORKING_DIR="$(dirname "$0")"
cd "$WORKING_DIR" || exit 1

for DIR in */ ; do
  echo "$WORKING_DIR/$DIR"
  "$WORKING_DIR/$DIR/rebuild.sh"
done
