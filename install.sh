#!/usr/bin/env bash
set -o errexit

CONFIGDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"

# ensure that the system node.js is used for the following commands
nvm deactivate >& /dev/null || true

cd "${CONFIGDIR}/bundle/tern_for_vim"
npm install

# jshint is used by syntastic to verify Javascript syntax
# js-beautify is used by vim-autoformat to reformat Javascript
npm install -g jshint js-beautify > /dev/null

rm -rf "${CONFIGDIR}/backup"
mkdir "${CONFIGDIR}/backup"
for item in "vimrc" "vim"; do
	if [ -e "${HOME}/.${item}" ]; then
		mv "${HOME}/.${item}" "${CONFIGDIR}/backup/${item}"
	fi
	ln -s "${CONFIGDIR}/${item}" "${HOME}/.${item}"
done

vim -c "Helptags | q"

echo "The previous vim configuration was saved to ${CONFIGDIR}/backup"
