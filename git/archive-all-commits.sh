#!/usr/bin/env bash

set -e

for REV in $(git log --all --format=%H)
do
	DATE=$(git log -1 --format=%as "${REV}")
	NAME=$(basename "${PWD}")-${DATE}-${REV}
	git archive --format=tar.gz --prefix="${NAME}"/ "${REV}" > ../"${NAME}".tar.gz
done
