#!/usr/bin/env bash

if [[ "$CONDA_BUILD_CROSS_COMPILATION" == "1" ]]; then
    sed -i.bak '1s@.*@#!/usr/bin/env python@' $BUILD_PREFIX/bin/cython
fi

PYTHON_ARGS="-D IGNORE_THIS=1"
for ARG in $CMAKE_ARGS; do
  if [[ "$ARG" == "-DCMAKE_"* ]] && [[ "$ARG" != *";"* ]]; then
    cmake_arg=$(echo $ARG | cut -d= -f1)
    cmake_arg=$(echo $cmake_arg| cut -dD -f2-)
    cmake_val=$(echo $ARG | cut -d= -f2-)
    PYTHON_ARGS="$PYTHON_ARGS;${cmake_arg}=${cmake_val}"
  fi
done

$PYTHON -m pip install . \
  --global-option="build_ext" \
  --global-option="--symengine-dir=$PREFIX" \
  --global-option="build_ext" \
  --global-option="$PYTHON_ARGS"
