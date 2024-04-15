#!/usr/bin/env bash


docker buildx build --platform linux/amd64 -t code4tag/vapor-action:latest .

docker run --interactive --tty --rm  \
  -e GITHUB_SECRET=secret \
  -e VAPOR_API_TOKEN=secret \
  code4tag/vapor-action:latest list
