#!/usr/bin/env bash

set -eux

"${PYTHON}" -m pip install . -vv --no-deps --no-build-isolation --disable-pip-version-check \
    -Ccmake.define.SymEngine_DIR="${PREFIX}"
