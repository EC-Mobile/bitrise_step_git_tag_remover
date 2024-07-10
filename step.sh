#!/bin/bash
set -ex

git fetch --tags
if git rev-parse "${tag_name}" >/dev/null 2>&1; then
  echo "tag exists";
  git push --delete $remote_name $tag_name
else
  echo "tag does not exist"
fi
