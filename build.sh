#!/usr/bin/env bash
set -o errexit # Abort if any command fails

rm -rf build

docker run --rm --name slate -v ${PWD}/build:/srv/slate/build -v ${PWD}/source:/srv/slate/source slatedocs/slate build
