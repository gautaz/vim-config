#!/usr/bin/env bash

if which css-beautify >& /dev/null; then
	css-beautify "$@" | unexpand -t4
else
	cat
fi
