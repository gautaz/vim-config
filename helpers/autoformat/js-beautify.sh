#!/usr/bin/env bash

function jscsrc_exists() {
	if [ -r "$1/.jscsrc" ]; then
		return 0
	elif [ "$1" = "/" ]; then
		return 1
	else
		jscsrc_exists "$(dirname "$1")"
		return $?
	fi
}

if which jscs >& /dev/null && jscsrc_exists "$1"; then
	(cd "$1" && jscs --fix -)
elif which js-beautify >& /dev/null; then
	js-beautify -f - -t
else
	cat
fi
