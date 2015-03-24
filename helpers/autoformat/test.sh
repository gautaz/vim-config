#!/usr/bin/env bash

echo "$@" > "$(dirname $0)/test.txt"
tee -a "$(dirname $0)/test.txt"
