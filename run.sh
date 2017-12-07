#!/bin/sh
set -x
docker run \
  --rm \
  --publish=2222:22 \
  --publish=5000:5000 \
  tedega:latest
