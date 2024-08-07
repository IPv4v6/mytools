#!/usr/bin/env bash

set -e

if [[ -z ${1} ]]; then
	echo "Usage: ${0} [file name]"
	exit 0
fi

for REV in $(git log --all --diff-filter=ACMRd --format=%H -- "${1}")
do
	DATE=$(git log -1 --format=%as "${REV}")
	git checkout "${REV}" "${1}"
	mv -i "${1}" "${1}","${DATE}","${REV}"
done
