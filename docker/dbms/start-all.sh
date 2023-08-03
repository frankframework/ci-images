#!/usr/bin/env bash

cd "$(dirname "$0")" || exit 1

for dir in */ ; do
  echo "$(pwd)/$dir"
  old_dir="$(pwd)"
  "$(pwd)/$dir/start.sh"
  cd "$old_dir" || exit 1
done
