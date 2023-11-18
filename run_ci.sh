#!/bin/sh

set -eux

cd agents/leleka.pxlth.1

while true; do
    strace -e open notify-send "Starting new CI job"
    docker-compose up --force-recreate --exit-code-from buildkite
done
