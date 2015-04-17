#!/usr/bin/env bash
set -o errexit

scriptdir="$(dirname "${BASH_SOURCE[0]}")"
if scriptlink="$(readlink "${BASH_SOURCE[0]}")"; then
	scriptdir="$(dirname "${scriptdir}/${scriptlink}")"
fi

plantdir="$(cd "${scriptdir}" && pwd)"
plantjar="${plantdir}/plantuml.jar"

if [ ! -e "${plantjar}" ]; then
	curl -s -L -o "${plantjar}" "http://downloads.sourceforge.net/project/plantuml/plantuml.jar?r=http%3A%2F%2Fplantuml.sourceforge.net%2Frunning.html&ts=1429274004&use_mirror=switch"
fi

tmpout="$(mktemp /tmp/plantuml.XXXXXXXX)"
cat "$@" | java -jar "${plantjar}" -tsvg -pipe > "${tmpout}"
xdg-open "${tmpout}"
