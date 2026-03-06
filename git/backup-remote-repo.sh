#!/usr/bin/env bash

set -e


if [[ -z ${1} ]]; then
	echo "Usage: ${0} [GITURL]"
	exit 0
fi

PROJECT=$(basename "${1}")
PROJECTDIR="${PROJECT}.git"


git clone --mirror "${1}"
git -C "${PROJECTDIR}" bundle create ../"${PROJECT}".bundle --all
