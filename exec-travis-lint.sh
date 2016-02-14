#!/usr/bin/env bash

set -e -x
LINT_ARGS="--no-interactive"
if [[ "$#" -gt 0 ]]; then
  LINT_ARGS="$@"
fi
docker run -it --rm -v $(pwd):/tmp/travis-workdir travis:lint ${LINT_ARGS}
