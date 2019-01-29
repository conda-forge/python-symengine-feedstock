#!/usr/bin/env bash

export CC=clang
export CXX=clang++

python setup.py install --symengine-dir=$PREFIX --single-version-externally-managed --record record.txt

mkdir temp
cd temp
#python -c $'import symengine;\nif not symengine.test():\n raise Exception("Tests failed")'
