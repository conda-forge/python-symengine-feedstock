#!/usr/bin/env bash

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
  $PYTHON_ARGS
